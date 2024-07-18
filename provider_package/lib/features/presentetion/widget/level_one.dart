import 'package:flutter/material.dart';

class FirstOne extends StatelessWidget {
  const FirstOne({super.key,required this.data});
  final String data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          data,
        ),
      ),
    );
  }
}

