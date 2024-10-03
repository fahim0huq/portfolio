import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Personal Info",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter, // Align the container at the top center
          child: Container(
            height: 300,
            width: 500,
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 5), // Add margin from top
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Vertically shrink-wrap the content
              children: const [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "I am MD Fahimul Hoque, I am from Coxesbazar, currently living in Chittagong. "
                        "In my free time, I like to take care of my plants as I enjoy collecting unique trees around the globe. "
                        "Also, I love watching movies and TV series. Some of my favorite movies are Fight Club, Apocalypto, The Pianist, 2001: A Space Odyssey. "
                        "Some of my favorite TV series are Game of Thrones, Vikings, Breaking Bad, and Prison Break. "
                        "I love to travel a lot. I've visited most of the fountains in Chittagong and traveled to 9 districts in BD.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.left, // Justify the text
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
