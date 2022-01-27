import 'package:flutter/material.dart';

class Measure extends StatefulWidget {


   const Measure({Key? key,}) : super(key: key);


  @override
  State<Measure> createState() => _MeasureState();
}

class _MeasureState extends State<Measure> {
  double _height = 170;
  double _weight = 50;
  double _bmi=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Weight",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _weight.toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Kg",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () =>
                                setState(() {
                                  _weight -= 1;
                                  if (_weight <= 0) {
                                    _weight = 0;
                                  }
                                }),
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Center(
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () =>
                                setState(() {
                                  _weight++;
                                }),
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Height",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _height.toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "cm",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () =>
                                setState(() {
                                  _height -= 1;
                                  if (_height <= 0) {
                                    _height = 0;
                                  }
                                }),
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Center(
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () =>
                                setState(() {
                                  _height += 1;
                                }),
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () => bmiCalculate(context),
          child: Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
      color:Colors.lightGreen,
      borderRadius: BorderRadius.circular(05)
      ),
      child: const Center(
      child: Text("Calculate",style:
      TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      )),
      ),
      ),
        ),
      ],
    );

  }
 bmiCalculate(BuildContext context){
    var bmi="" ;
    // Converting cm To m
    double height=_height*0.01;
  _bmi= (_weight/(height*height)) ;
  if(_bmi<18.5) {
    bmi = "You are UnderWeight";
  }
else if(_bmi>=18.5 && _bmi<=24.9){
  bmi="Your Weight is Normal";
  }
  else if(_bmi>=25 && _bmi<=29.9){
    bmi="Your are OverWeight";
  }
  else if(_bmi>=30 && _bmi<=34.9){
    bmi="You are Obese";
  }
  else if(_bmi>35){
    bmi="you are Extremely Obese";
  }
showDialog(context: context, builder: (BuildContext context){
  return AlertDialog(title: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("Your BMI IS : "+_bmi.toStringAsFixed(2)),
      Text(""+bmi),
    ],
  ),backgroundColor: Colors.blueGrey,elevation: 30,buttonPadding:const EdgeInsets.all(10),
    actions: [
    TextButton(onPressed: () => Navigator.pop(context), child: const Text("ok",style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,color: Colors.white,
    ),
    ),
    ),
  ],);
});
  }
}




