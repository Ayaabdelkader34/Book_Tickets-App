import 'package:booktickets_app/screens/bottom_bar.dart';
import 'package:booktickets_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primaryColor: primary,
      ),
      debugShowCheckedModeBanner: false,
      home: const  BottomBar(),
    );
  }
}

