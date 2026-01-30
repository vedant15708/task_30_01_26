import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Example',
      debugShowCheckedModeBanner: false,
      home: ColumnExample(),
    );
  }
}

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Text(
                "Row() Example",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              Expanded(
                child: Row(
                  crossAxisAlignment: .center,
                  children: [
                    RotatedBox(
                      quarterTurns: 3,
                      child: const Text(
                        "CrossAxisAlignment.center",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 330),
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        color: Colors.grey.shade300,
                        child: Row(
                          mainAxisAlignment: .start,
                          crossAxisAlignment: .center,
                          children: [
                            _box(Colors.red),
                            _box(Colors.green),
                            _box(Colors.blue),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const Text(
                "MainAxisAlignment.start",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _box(Color color) {
    return Container(height: 60, width: 60, color: color);
  }
}
