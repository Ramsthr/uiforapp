import 'package:flutter/material.dart';

import 'package:ui/screenui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: height * 0.8,
                color: Colors.blueAccent,
              ),
            ),
            Positioned(
              child: Column(
                children: [
                  Expanded(child: Container()),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 29, 29, 29),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(500, 50),
                        topRight: Radius.elliptical(500, 50),
                      ),
                    ),
                    height: height * 0.84,
                  ),
                ],
              ),
            ),
            Positioned(
              right: width * 0.048,
              child: Container(
                margin: const EdgeInsets.only(top: 15),
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.06, vertical: height * 0.015),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 43, 42, 42),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: const Text(
                  "Following",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const ScreenUI(),
          ],
        ),
      ),
    );
  }
}
