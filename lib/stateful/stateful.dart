import 'package:flutter/material.dart';

class SimpleStateful extends StatefulWidget {
  const SimpleStateful({super.key});

  @override
  State<SimpleStateful> createState() => _SimpleStatefulPageState();
}

class _SimpleStatefulPageState extends State<SimpleStateful> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() => _counter++);
  }

  void _resetCounter() {
    setState(() => _counter = 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F4F8),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade50, const Color(0xFFE6E9EF)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 40,
                ),
                child: Column(
                  children: [
                    Text(
                      "TOTAL HITUNG",
                      style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey.shade300,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '$_counter',
                      style: TextStyle(
                        fontSize: 90,
                        fontWeight: FontWeight.w300,
                        color: Colors.blueGrey.shade800,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _incrementCounter,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade400,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.add, size: 20),
                      SizedBox(width: 8),
                      Text("Tambah"),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                TextButton(
                  onPressed: _resetCounter,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blueGrey.shade400,
                  ),
                  child: const Text("Reset"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
