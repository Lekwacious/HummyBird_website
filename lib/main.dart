import 'package:flutter/material.dart';
import 'package:the_basis/views/home/homeview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Open Sans'
        ),

        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}



