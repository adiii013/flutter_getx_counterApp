import 'package:demo_counter_app/HomePage.dart';
import 'package:demo_counter_app/SecondScreen.dart';
import 'package:demo_counter_app/controller/CounterController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Places the controller into the application so that it can be accessible
    Get.put(CounterController());
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/':(context)=> HomePage(),
        '/second':(context)=>SecondScreen()
      },
    );
  }
}
