import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  @override
  createState() => _CounterScreenState();

}

class _CounterScreenState extends State<CounterScreen> {

  // Solo se usara en este archivo

  int _counter = 0;

  final _textMutedStyle = new TextStyle( 
    color: Colors.black45
  );

  final _numberStyle = new TextStyle(
    color: Colors.black87,
    fontSize: 50.0,
    fontWeight: FontWeight.bold
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black87,
        brightness: Brightness.dark,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text( '$_counter' , style: _numberStyle ),
            Text('Number of Taps!', style: _textMutedStyle ),
          ],
        ),
      ),
      floatingActionButton: _createButtons()
    );
  }

  Widget _createButtons() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox( width: 30 ),
        FloatingActionButton( child: Icon( Icons.exposure_zero ), onPressed: () => _reset(), backgroundColor: Colors.black87, ),
        Expanded( child: SizedBox() ),
        FloatingActionButton( child: Icon( Icons.remove ), onPressed: () => _decrement(), backgroundColor: Colors.black87, ),
        SizedBox( width: 10 ),
        FloatingActionButton( child: Icon( Icons.add_outlined ), onPressed: () => _increment(), backgroundColor: Colors.black87, ),
      ]
    );
    
  }

  void _reset() => setState(() => _counter = 0 );
  
  void _increment() => setState( () => _counter++ );

  void _decrement() {
    if ( _counter > 0 ) {
      setState(() {
        _counter--;
      });
    }
  }



}