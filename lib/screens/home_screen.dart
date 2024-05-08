import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              margin: const EdgeInsets.only(top: 18),
              child: const Image(image: AssetImage('assets/logo.png')),
            ),
          ),
        ],
      ),
    );
  }
}
