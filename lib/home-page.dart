import 'package:flutter/material.dart';
import 'package:portfolio/education.dart';
import 'package:portfolio/experiance.dart';
import 'package:portfolio/perosnal_info.dart';
import 'package:portfolio/skills.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 15),
              // Image
              Container(
                width: 180,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                    image: AssetImage('assets/images/my_image.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 15),
              Container(
                child:Text(
                  "Md Fahim ul Hoque",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                ),
              ),
              SizedBox(height: 7),
              ///this is phone number and email section
            Container(
              width: 350,  // Adjusted width to fit both items side by side
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),  // Changes the position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Phone Number with Icon
                  Row(
                    children: [
                      Icon(Icons.phone, color: Colors.green, size: 18),
                      SizedBox(width: 5),
                      Text(
                        "+8801886046918",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // Email with Icon
                  Row(
                    children: [
                      Icon(Icons.email, color: Colors.redAccent, size: 18),
                      SizedBox(width: 5),
                      Text(
                        "fahimulhuq2002@gmail.com",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),

              ///this is personal info
            Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PersonalInfo()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 8,
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: Text("Personal Info"),
                ),
              ),


              SizedBox(height: 15),

            /// this is skills
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Skills()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 8, // Adds shadow for the button
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
                child: Text("Skills"),
              ),
            ),

              SizedBox(height: 15),

              ///this is experiance
            Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Experiance()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 8,
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: Text("Experience"),
                ),
              ),

              SizedBox(height: 15),

              ///this is Education
            Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Education()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 8,
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: Text("Education"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
