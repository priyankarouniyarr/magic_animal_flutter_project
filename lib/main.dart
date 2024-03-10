import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          centerTitle: true,
          title: Center(child: Text('WELCOME TO THIS SITE')),
          backgroundColor: Colors.blue,
        ),
        body: Magic_Animal(),
      ),
    );
  }
}

class Magic_Animal extends StatefulWidget {
  @override
  State<Magic_Animal> createState() => _Magic_AnimalState();
}

class _Magic_AnimalState extends State<Magic_Animal> {
  int animalNumber1 = 1;
  int animalNumber2 = 2;
  int animalNumber3 = 3;
  int animalNumber4 = 4;
  int animalNumber5 = 3;
  calling1() {
    setState(
      () {
        animalNumber2 = Random().nextInt(5) + 1;
        animalNumber3 = Random().nextInt(5) + 1;
        animalNumber4 = Random().nextInt(5) + 1;
        animalNumber5 = Random().nextInt(5) + 1;
      },
    );
  }

  calling2() {
    setState(
      () {
        animalNumber1 = Random().nextInt(5) + 1;
        animalNumber3 = Random().nextInt(5) + 1;
        animalNumber4 = Random().nextInt(5) + 1;
        animalNumber5 = Random().nextInt(5) + 1;
      },
    );
  }

  calling3() {
    setState(
      () {
        animalNumber2 = Random().nextInt(5) + 1;
        animalNumber1 = Random().nextInt(5) + 1;
        animalNumber4 = Random().nextInt(5) + 1;
        animalNumber5 = Random().nextInt(5) + 1;
      },
    );
  }

  calling4() {
    setState(
      () {
        animalNumber2 = Random().nextInt(5) + 1;
        animalNumber1 = Random().nextInt(5) + 1;
        animalNumber3 = Random().nextInt(5) + 1;
        animalNumber5 = Random().nextInt(5) + 1;
      },
    );
  }

  calling() {
    setState(
      () {
        animalNumber4 = Random().nextInt(5) + 1;
        animalNumber2 = Random().nextInt(5) + 1;
        animalNumber1 = Random().nextInt(5) + 1;
        animalNumber3 = Random().nextInt(5) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                calling1();
              },
              child: Image.asset(
                'images/animal$animalNumber1.jpg',
                width: 100,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            TextButton(
              onPressed: () {
                calling2();
              },
              child: Image.asset(
                'images/animal$animalNumber2.jpg',
                width: 100,
              ),
            ),
          ],
        ),
        // SizedBox(
        //   height: 10.0,
        // ),
        Padding(
          padding: const EdgeInsets.all(45.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  calling();
                },
                child: Image.asset(
                  'images/animal$animalNumber5.jpg',
                  width: 100,
                ),
              ),
            ],
          ),
        ),
        // SizedBox(
        //   height: 10.0,
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                calling3();
              },
              child: Image.asset(
                'images/animal$animalNumber3.jpg',
                width: 100,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            TextButton(
              onPressed: () {
                calling4();
              },
              child: Image.asset(
                'images/animal$animalNumber4.jpg',
                width: 100,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
