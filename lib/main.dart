import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Youtube Today?', home: BasePage());
  }
}

class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  Color backgroundColor = Colors.purple;
  Text display = const Text("");
  DateTime seed = DateTime(2021, 12, 24);

  @override
  void initState() {
    TextStyle style = const TextStyle(fontSize: 40, color: Colors.white);
    if (DateTime.now().difference(seed).inDays % 3 == 0) {
      backgroundColor = Colors.green;
      display = Text("Yes", style: style);
    } else {
      backgroundColor = Colors.red;
      display = Text("No", style: style);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor, body: Center(child: display));
  }
}
