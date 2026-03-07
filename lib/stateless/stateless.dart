import 'package:flutter/material.dart';

class SimpleStateless extends StatelessWidget {
  const SimpleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7CCCC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE7CCCC),
        leading: IconButton(
          padding: EdgeInsets.only(left: 20, top: 20),
          icon: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFEDE8DC),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.arrow_back, color: const Color(0xff41431B)),
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 20, top: 20),
            icon: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFEDE8DC),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.settings, color: const Color(0xff41431B)),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 10, width: double.infinity),
          Text(
            "Praktikum 2 PAM Lanjut",
            style: TextStyle(
              letterSpacing: 2,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color(0xff41431B),
            ),
          ),
          SizedBox(height: 10, width: double.infinity),
          Text(
            "Praktikum Stateless Widget",
            style: TextStyle(
              letterSpacing: 2,
              fontSize: 15,
              fontWeight: FontWeight.w300,
              color: const Color(0xff41431B),
            ),
          ),
          SizedBox(height: 80, width: double.infinity),
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
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: Column(),
            ),
          ),
        ],
      ),
    );
  }
}
