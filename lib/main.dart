import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 204, 106, 7),
          title:const Text('Pints Counter',style: TextStyle(color: Colors.white),) ,
        ),
        body: Column(
          
        ),
      ),
    );
  }
}