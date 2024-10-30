import 'package:flutter/material.dart';

void main() {
  runApp( pointsCounter() );
}
class  pointsCounter extends StatefulWidget {
  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
 int teamAPoint = 0;

 int teamBPoint = 0;

void addOnePoint(){
  print('add one point');
}
  
  @override
  Widget  build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Points counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                   Text(
                     'Team A',
                     style: TextStyle(
                     fontSize: 42,
                   ),
                   ),
                    Text(
                      '$teamAPoint',
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                      minimumSize: Size(150, 50),
                      ),
                        onPressed: (){
                        setState(() {
                          teamAPoint++;
                        });
                        print(teamAPoint);
                        },
                        child: Text ('Add 1 Point',
                          style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ) ,)
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,

                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoint+=2;
                          });
                          print(teamAPoint);
                        },
                        child: Text ('Add 2 Point',
                          style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ) ,)
                    ),
                  const SizedBox(
                    height: 20,
                  ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoint+=3;
                          });
                          print(teamAPoint);
                        },
                        child: Text ('Add 3 Point',
                          style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ) ,)
                    ),
                  ],
                ),
             const SizedBox(
               height: 380,
               child: VerticalDivider(
                  color: Colors.grey,
                 thickness: 1,
               ),
             ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 42,
                      ),
                    ),
                    Text(
                      '$teamBPoint',
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoint++;
                          });
                          print(teamBPoint);
                        },
                        child: Text ('Add 1 Point', style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ) ,)
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoint+=2;
                          });
                          print(teamBPoint);
                        },
                        child: Text ('Add 2 Point', style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ) ,)
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoint+=3;
                          });
                          print(teamBPoint);
                        },
                        child: Text ('Add 3 Point', style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ) ,)
                    ),
                  ],
                ),
              ],
            ),
           const SizedBox(
              height: 60,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  minimumSize: Size(150, 50),
                ),
                onPressed: () {
                  setState(() {
                    teamAPoint = 0;
                    teamBPoint = 0;
                  });
                },
                child: Text ('Reset',
                  style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ) ,)
            ),
          ],
        ),
      ),
    );
  }
}


