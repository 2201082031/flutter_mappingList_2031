import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Sandhika",
      "Age": 23,
      "faveColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
         "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
         "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
      ]
    },
     {
      "Name": "Sandhika",
      "Age": 23,
      "faveColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
      ]
    },
    {
      "Name": "Sandhika",
      "Age": 23,
      "faveColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
      ]
    },
   {
      "Name": "Sandhika",
      "Age": 23,
      "faveColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
      ]
    },
    {
      "Name": "Sandhika",
      "Age": 23,
      "faveColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
      ]
    },
    {
      "Name": "Sandhika",
      "Age": 23,
      "faveColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ID App"),
        ),
        body: ListView(
          children: myList.map((data) {
            List<String> myfavcolor = data["faveColor"].cast<String>();
            return Card(
              margin: EdgeInsets.all(20),
              color: Colors.black.withOpacity(0.1),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Row
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name: ${data['Name']}"),
                            Text("Age: ${data['Age']}"),
                          ],
                        ),
                      ],
                    ),
                    // FavColor
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: myfavcolor.map((color) {
                          return Container(
                            color: Colors.amber,
                            margin: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 8,
                            ),
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
