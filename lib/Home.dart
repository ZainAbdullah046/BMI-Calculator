import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  final TextEditingController wicontroller = TextEditingController();
  final TextEditingController hecontroller = TextEditingController();

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
      ),
      body: Column(
        children: [
          TextField(
            controller: wicontroller,
            decoration: const InputDecoration(
                hintText: "Enter your weight in kgs",
                prefixIcon: Icon(Icons.line_weight)),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: hecontroller,
            decoration: const InputDecoration(
                hintText: "Enter your height meters",
                prefixIcon: Icon(Icons.line_weight)),
            keyboardType: TextInputType.number,
          )
        ],
      ),
    );
  }
}
