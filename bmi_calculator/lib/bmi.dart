import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  final heightcontroller = TextEditingController();
  final weightcontroller = TextEditingController();
  String result = "";
  void calculate() {
    double h = double.parse(heightcontroller.text) / 100;
    double w = double.parse(weightcontroller.text);
    double bmi = w / (h * h);
    setState(() {
      result = "your BMI is : ${bmi.toStringAsFixed(2)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,

              colors: [
                const Color.fromARGB(255, 22, 185, 222),
                const Color.fromARGB(255, 2, 72, 63),
              ],
            ),
            border: Border.all(color: Colors.white),
          ),
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                "BMI CALCULATOR",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 500,
                width: 300,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: heightcontroller,
                        decoration: InputDecoration(
                          fillColor: const Color.fromARGB(255, 220, 213, 213),
                          filled: true,
                          prefixIcon: Icon(Icons.height),
                          labelText: "Height(cm)",
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: weightcontroller,
                        decoration: InputDecoration(
                          fillColor: const Color.fromARGB(255, 218, 213, 213),
                          filled: true,
                          prefixIcon: Icon(Icons.monitor_weight),
                          labelText: "Weight(kg)",
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 60,
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                              255,
                              3,
                              45,
                              59,
                            ),
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            calculate();
                          },
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      result,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
