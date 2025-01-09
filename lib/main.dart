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
          backgroundColor: const Color.fromARGB(255, 207, 124, 41),
          title:const Text('Pints Counter',style: TextStyle(color: Colors.white),) ,
        ),
        body: Column(
          children: [
            Text('Team A',style: TextStyle(
              color: Colors.black ,
              fontSize: 45,
            ),),
            Text('0',style: TextStyle(
              color: Colors.black,
              fontSize: 120,
            ),),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                 foregroundColor: Colors.black,
                 backgroundColor: const Color.fromARGB(255, 207, 124, 41),
              ),
              onPressed: (){}, 
              child: Text('Add 1 Point'),),
          
          ],
        ),
      ),
    );
  }
}