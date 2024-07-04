import 'package:flutter/material.dart';
import 'package:state_managment/features/presentataions/pages/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner:  false,
      home:  TasksScreen(),
    );
  }
}

