import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  final TextEditingController wicontroller = TextEditingController();
  final TextEditingController hecontroller = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 53, 92),
        title: const Center(
          child: Text(
            "BMI CALCULATOR",
            style: TextStyle(
                color: Color.fromARGB(179, 248, 244, 244),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
      ),
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("BMI",
              style: TextStyle(
                  color: Color.fromARGB(179, 19, 5, 5),
                  fontWeight: FontWeight.bold,
                  fontSize: 30)),
          const SizedBox(
            height: 20,
          ),
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
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                var weight = wicontroller.text;
                var height = hecontroller.text;

                if (weight != "" && height != "") {
                  var wei = int.parse(weight);
                  var hei = int.parse(height);
                  var bmi = wei / (hei * hei);
                  setState(() {
                    result = "Your BMI is: ${bmi.toStringAsFixed(2)}";
                  });
                } else {
                  setState(() {
                    result = "Plz fill all the reuired details ";
                  });
                }
              },
              child: const Text("Calculate")),
          Text(result,
              style: const TextStyle(
                  color: Color.fromARGB(179, 19, 5, 5),
                  fontWeight: FontWeight.bold,
                  fontSize: 15))
        ],
      ),
    );
  }
}
