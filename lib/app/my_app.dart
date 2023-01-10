import 'package:flutter/material.dart';
import 'package:kaktus/view/drawer_view.dart';
import 'package:kaktus/view/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DrawerView(),
    );
  }
}



