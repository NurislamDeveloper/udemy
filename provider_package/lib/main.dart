import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => Data(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Consumer<Data>(
            builder: (context, data, child) {
              return Text(data.data);
            },
          ),
        ),
        body: Level(),
      ),
    );
  }
}

class Level extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer<Data>(
          builder: (context, data, child) {
            return Text(data.data);
          },
        ),
        Level2(),
      ],
    );
  }
}

class Level2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (newString) {
            Provider.of<Data>(context, listen: false).changeState(newString);
          },
        ),
        const SizedBox(
          height: 30,
        ),
        Level3(),
      ],
    );
  }
}

class Level3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer<Data>(
          builder: (context, data, child) {
            return Text(data.data);
          },
        ),
      ],
    );
  }
}

class Data extends ChangeNotifier {
  String data = "2006.12.09";

  void changeState(String newValue) {
    data = newValue;
    notifyListeners();
  }
}
