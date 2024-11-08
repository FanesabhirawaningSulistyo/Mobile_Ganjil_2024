import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
     
      appBar: AppBar(
        title: const Text('Navigation Second Screen'),
        backgroundColor: Colors.purple,
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                color = Colors.purple.shade300;
                Navigator.pop(context, color);
              },
              child: const Text('Purple'),
            ),
            ElevatedButton(
              onPressed: () {
                color = Colors.blue.shade300;
                Navigator.pop(context, color);
              },
              child: const Text('Blue'),
            ),
            ElevatedButton(
              onPressed: () {
                color = Colors.green.shade300;
                Navigator.pop(context, color);
              },
              child: const Text('Green'),
            ),
          ],
        ),
      ),
    );
  }
}