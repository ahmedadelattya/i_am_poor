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
        body:SafeArea(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            // verticalDirection: VerticalDirection.down,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 100,
                color: Colors.red,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow.withValues(alpha: 0.3),
                  ),
                ],
              ),
              Container(
                width: 100,
                color: Colors.blue,
              ),
            ],
          ),
        )
      ),
    );
  }
}
