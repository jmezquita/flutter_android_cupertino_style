import 'package:flutter/material.dart';
import 'package:flutter_android_cupertino_style/home_app_cupertino.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Cupertino Style',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeAppCupertino(),
    );
  }
}
