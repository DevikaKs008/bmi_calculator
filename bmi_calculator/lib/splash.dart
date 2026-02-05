import 'package:bmi_calculator/bmi.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 22, 185, 222),
              const Color.fromARGB(255, 2, 72, 63),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "BMI \n CALCULATOR",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "poppins",
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 18, 17, 17),
              ),
            ),

            Text(
              "Calculate Your Body \n Mass Index easily !",
              style: TextStyle(
                fontFamily: "italic",
                fontSize: 28,
                color: const Color.fromARGB(255, 18, 17, 17),
              ),
            ),
            SizedBox(height: 150),
            SizedBox(
              height: 100,
              width: 180,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bmi()),
                  );
                },

                child: Text("GET STARTED"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 22, 7, 2),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
