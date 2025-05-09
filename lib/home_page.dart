import 'package:bmi_calculator/colors.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int age = 18;
  double height = 200;
  double weight = 50;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "BMI CALCULATOR",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: lightGreenColor,
        ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  GestureDetector(
                    onTap:
                        () => setState(() {
                          isMale = true;
                        }),
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 180,
                      height: 190,
                      decoration: BoxDecoration(
                        color: blueColor,
                        border: Border.all(
                          color: Colors.amber,
                          width: isMale ? 4 : 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.male, size: 50, color: Colors.white),
                          Text(
                            "Male",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },

                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        color: blueColor,
                        border: Border.all(
                          color: Colors.amber,
                          width: isMale ? 0 : 4,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: 180,
                      height: 190,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.female, size: 50, color: Colors.white),
                          Text(
                            "Female",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 190,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        color: lightGreenColor,
                        border: Border.all(width: 4),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Height",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            height.toStringAsFixed(1),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Slider(
                            activeColor: purpleColor,
                            value: height.toDouble(),
                            min: 60,
                            max: 240,
                            onChanged: (value) {
                              setState(() {
                                height = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 190,
                      decoration: BoxDecoration(
                        color: lightOrangeColor,
                        border: Border.all(width: 4),
                        borderRadius: BorderRadius.circular(12),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "$age",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: lightTealColor,

                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      height: 190,
                      decoration: BoxDecoration(
                        color: lightRedColor,
                        border: Border.all(width: 4),
                        borderRadius: BorderRadius.circular(12),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "$weight",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: lightTealColor,

                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove,
                                  size: 30,
                                  color: Colors.black,
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
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      color: purpleColor,
                      textColor: Colors.black,

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => ResultPage(
                                  height: height,
                                  weight: weight,
                                  isMale: isMale,
                                ),
                          ),
                        );
                      },
                      child: Text(
                        "Calculate",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
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
    );
  }
}
