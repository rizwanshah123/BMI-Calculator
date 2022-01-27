import 'gender_Content.dart';
import 'measure.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedGender = 1;
  int height=160;
  int weight=50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "BMI CALCULATOR",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //gender
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => setState(() {
                    selectedGender = 1;
                  }),
                  child: Container(
                      padding: const EdgeInsets.all(50),
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blue,
                      ),
                      child: GenderContent(
                        icon: Icons.male,
                        gender: "Male",
                        active: (selectedGender == 1),
                      )),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => setState(() {
                    selectedGender = 0;
                  }),
                  child: Container(
                      padding: const EdgeInsets.all(50),
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blue,
                      ),
                      child: GenderContent(
                        icon: Icons.female,
                        gender: "Female",
                        active: (selectedGender == 0),
                      )),
                ),
              ),
            ],
          ),
          const Measure(),
          //weight and height
          //Calculate_Button(),

        ],
      ),
    );
  }

}
