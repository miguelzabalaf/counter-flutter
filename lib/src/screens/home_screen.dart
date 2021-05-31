import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final int counter = 10;

  final textMutedStyle = new TextStyle( 
    color: Colors.black45,
  );

  final numberStyle = new TextStyle(
    color: Colors.black87,
    // fontSize: 35,
    fontWeight: FontWeight.bold
  );

  final fabTextStyle = new TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w200,
    color: Colors.white
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text( '$counter' , style: numberStyle ),
            Text('Numero de Taps', style: textMutedStyle ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        hoverColor: Colors.black54,
        elevation: 10,
        child: Icon( Icons.add_outlined ),
        // child: Text('+',
        //   style: fabTextStyle,
        // ),
        // onPressed: null, it is a disabled effect
        onPressed: () { 
          print('Hola mundo');
        },
      ),
    );
  }

}