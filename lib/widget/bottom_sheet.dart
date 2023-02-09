import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cartScreen.dart';

class CustomBottomSheet extends StatelessWidget {
  List sizes = [
    "XS",
    "S",
    "M",
    "L",
    "XL",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        SizedBox(height: 10),
        Container(
          height: 4,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Text(
              "Size:",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 30,
            ),
            for (int i = 0; i < sizes.length; i++)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(sizes[i]),
              ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text(
              "Color:",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            SizedBox(width: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                color: Colors.red.shade900,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                color: Colors.brown.shade700,
                borderRadius: BorderRadius.circular(20),
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text(
              "Total:",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            SizedBox(width: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(CupertinoIcons.minus,
                  size: 18, color: Color.fromARGB(255, 246, 107, 225)),
            ),
            SizedBox(width: 8),
            Text(
              "1",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
            SizedBox(width: 8),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(CupertinoIcons.add,
                  size: 18, color: Color.fromARGB(255, 246, 107, 225)),
            ),
          ],
        ),
        SizedBox(height: 40),
        Row(
          children: [
            Text(
              "Total Payment:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Text(
              "\$300.50",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 246, 107, 225)),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (contex) => CartScreen(),
                ));
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 100,
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 246, 107, 225),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              "Check out",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1),
            ),
          ),
        ),
      ]),
    );
  }
}
