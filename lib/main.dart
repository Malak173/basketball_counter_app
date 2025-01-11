import 'package:flutter/material.dart';

void main() {
  runApp( PointsCounter());
}

class  PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0 ;
  int teamBPoints = 0 ;

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text('Team A',style: TextStyle(
                      color: Colors.black ,
                      fontSize: 32,
                    ),),
                     Text('$teamAPoints',style: const TextStyle(
                      color: Colors.black,
                      fontSize: 150,
                    ),),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                         foregroundColor: Colors.black,
                         backgroundColor: const Color.fromARGB(255, 207, 124, 41),
                         maximumSize: const Size(130, 50)
                      ),
                      onPressed: (){
                        setState(() {
                          teamAPoints++;
                        });
                      }, 
                      child: const Text('Add 1 Point'),),
                      const SizedBox(height: 20,),
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                         foregroundColor: Colors.black,
                         backgroundColor: const Color.fromARGB(255, 207, 124, 41),
                         maximumSize: const Size(130, 50)
                      ),
                      onPressed: (){
                         setState(() {
                          teamAPoints += 2;
                        });
                      }, 
                      child: const Text('Add 2 Point'),),
                      const SizedBox(height: 20,),
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                         foregroundColor: Colors.black,
                         backgroundColor: const Color.fromARGB(255, 207, 124, 41),
                         maximumSize: const Size(130, 50)
                      ),
                      onPressed: (){
                          setState(() {
                          teamAPoints += 3;
                        });
                      }, 
                      child: const Text('Add 3 Point'),),
                      
                  ],
                ),
                const SizedBox(
                  height: 400,
                  child: VerticalDivider(
                   thickness: 2,
                   color: Colors.black12,
                   
                  ),
                ),
                Column(
                  children: [
                    const Text('Team B',style: TextStyle(
                      color: Colors.black ,
                      fontSize: 32,
                    ),),
                    Text('$teamBPoints',style: const TextStyle(
                      color: Colors.black,
                      fontSize: 150,
                    ),),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                         foregroundColor: Colors.black,
                         backgroundColor: const Color.fromARGB(255, 207, 124, 41),
                         maximumSize: const Size(130, 50)
                      ),
                      onPressed: (){
                          setState(() {
                          teamBPoints++;
                        });
                      }, 
                      child: const Text('Add 1 Point'),),
                     const SizedBox(height: 20,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                         foregroundColor: Colors.black,
                         backgroundColor: const Color.fromARGB(255, 207, 124, 41),
                         maximumSize: const Size(130, 50)
                      ),
                      onPressed: (){
                          setState(() {
                          teamBPoints += 2;
                        });
                      }, 
                      child: const Text('Add 2 Point'),),
                      const SizedBox(height: 20,),
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                         foregroundColor: Colors.black,
                         backgroundColor: const Color.fromARGB(255, 207, 124, 41),
                         maximumSize: const Size(130, 50)
                      ),
                      onPressed: (){
                          setState(() {
                          teamBPoints += 3;
                        });
                      }, 
                      child: const Text('Add 3 Point'),),
                      
                  ],
                ),
              
              ],
            ),
            const SizedBox(height: 100,),
            ElevatedButton(
                      style: ElevatedButton.styleFrom(
                         foregroundColor: Colors.black,
                         backgroundColor: const Color.fromARGB(255, 207, 124, 41),
                         minimumSize: const Size(120, 50),
                      ),
                      onPressed: (){
                          setState(() {
                          teamAPoints = 0 ;
                          teamBPoints = 0 ;
                        });
                      }, 
                      child: const Text('Reset'),),
            const SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}