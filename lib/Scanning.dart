import 'package:flutter/material.dart';
import 'package:practice/Scan.dart';

class Scanning extends StatelessWidget {
  const Scanning({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => scan()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 25, left: 20),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 83, 77, 77),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(Icons.arrow_back_ios, color: Colors.white),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(top: 25, right: 20),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(12)),
                    child: Icon(Icons.more_horiz_outlined),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 30),
                        child: Text(
                          'Scanning',
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Result',
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Text(
                          '105',
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.yellowAccent,
                              fontSize: 40),
                        ),
                        Text(
                          'mg/dL',
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 17,
                              color: Color.fromARGB(255, 238, 238, 98)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Scanned at 16:23 PM',
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 17,
                      color: Colors.white54),
                ),
              ),
              Container(
                height: 220,
                width: double.infinity,
                color: Colors.white12,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Activity at this time',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 191, 214, 98),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Image.asset('assets/images/shoes.png'),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 25),
                                  child: Text(
                                    'Running',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text('06:00 - 06:30 AM'),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Icon(Icons.chevron_right),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    
                    top: 80,
                    child: Container(
                      height: 100,
                      width: 390,
                     // width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                      transform: Matrix4.rotationZ(0.1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                ),
                                child: Icon(Icons.restaurant),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Text('Breakfast',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white
                                  ),),
                                ),
                                Text('07:00 - 08:00 AM',style: TextStyle(
                                  color: Colors.white60
                                ),),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)
                            ),
                            child: Icon(Icons.chevron_right),
                          ),
                        )
                      ]
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
