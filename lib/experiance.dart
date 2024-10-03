import 'package:flutter/material.dart';

class Experiance extends StatelessWidget {
  const Experiance({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> experiance=[
      "abc","def","ghi","jkl","mno","pqr","stu","vwx","yz"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Experience",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.blue, // Set background color for AppBar
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
          children: experiance.map((exp) => Container(
            height: 50,
            width: 400,
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                  offset: Offset(0, 2),
                )
              ],
            ),
            child: Text(
              exp,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )).toList(),

          ),
        ),
      ),
    );
  }
}


