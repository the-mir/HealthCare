import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'main.dart';

class scan extends StatelessWidget {
  const scan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Icon(Icons.more_horiz),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text('Scan your',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
            ),
            Text('blood sugar',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 200,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Center(
              child: Container(
              height: 70,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.fingerprint,size: 30,),
                ),
            )
          ],
          ),
        ),
      ),
    );
  }
}