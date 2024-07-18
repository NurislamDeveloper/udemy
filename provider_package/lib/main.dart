import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_package/features/presentetion/widget/level_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 final String data = "My name is Nurislam";
  @override
  Widget build(BuildContext context) {
    return Provider<String>(
      builder: (context) => data,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme:  const AppBarTheme(
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const FirstOne(),
      ),
    );
  }
}
