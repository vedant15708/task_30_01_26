import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Example',
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
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                "Column() Example",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 12),

              Expanded(
                child: Row(
                  crossAxisAlignment: .center,
                  children: [
                    RotatedBox(
                      quarterTurns: 3,
                      child: const Text(
                        "MainAxisAlignment.spaceBetween",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        color: Colors.grey.shade300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                "CrossAxisAlignment.center",
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
