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
      backgroundColor: Colors.grey[200],
      body: Container(
        width: 300,
        color: Colors.amber,
        margin: EdgeInsets.all(20),
        child: Column(
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
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: hecontroller,
              decoration: const InputDecoration(
                  hintText: "Enter your height in meters",
                  prefixIcon: Icon(Icons.height)),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  var weight = wicontroller.text;
                  var height = hecontroller.text;

                  if (weight.isNotEmpty && height.isNotEmpty) {
                    double? wei = double.tryParse(weight);
                    double? hei = double.tryParse(height);

                    if (wei != null && hei != null && hei > 0) {
                      double bmi = wei / (hei * hei);
                      setState(() {
                        result = "Your BMI is: ${bmi.toStringAsFixed(2)}";
                      });
                    }
                  } else {
                    setState(() {
                      result = "Please fill all the required details.";
                    });
                  }
                },
                child: const Text("Calculate")),
            const SizedBox(
              height: 20,
            ),
            Text(result,
                style: const TextStyle(
                    color: Color.fromARGB(179, 19, 5, 5),
                    fontWeight: FontWeight.bold,
                    fontSize: 15))
          ],
        ),
      ),
    );
  }
}
