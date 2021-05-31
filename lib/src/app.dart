import 'package:flutter/material.dart';
// import 'package:counter/src/screens/home_screen.dart';
import 'package:counter/src/screens/counter_screen.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build( context ) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: CounterScreen(),
      ),
    );

  }

}