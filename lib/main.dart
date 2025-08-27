import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage(
                  'assets/images/my_image.jpg',
                ),
              ),
              Text(
                "Mohamed Samir",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight:
                      FontWeight.bold,
                  fontFamily:
                      "Pacifico",
                ),
              ),
              Text(
                "FRONTEND DEVELOPER",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors
                      .teal
                      .shade100,
                  fontFamily:
                      "SourceSans",
                  fontWeight:
                      FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              Container(
                color: Colors.white,
                margin:
                    EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 25,
                    ),
                padding: EdgeInsets.all(
                  10,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color:
                          Colors.teal,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "+01286095905",
                      style: TextStyle(
                        color:
                            Colors.teal,
                        fontSize: 20,
                        fontWeight:
                            FontWeight
                                .bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin:
                    EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 25,
                    ),
                padding: EdgeInsets.all(
                  10,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color:
                          Colors.teal,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "fekrabokra@gmail.com",
                      style: TextStyle(
                        color:
                            Colors.teal,
                        fontSize: 20,
                        fontWeight:
                            FontWeight
                                .bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
