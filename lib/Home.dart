import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Center(
        child: Text(
          "BMI CALCULATOR",
          style: TextStyle(
              color: Color.fromARGB(179, 19, 5, 5),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
    ));
  }
}
