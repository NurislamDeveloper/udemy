import 'package:flutter/material.dart';
import 'package:provider/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String data = "something went wrong ";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(data),
        ),
        body: const  Column(
          children: [
            MyHomePage()
          ],
        ),
      ),
    );
  }
}
