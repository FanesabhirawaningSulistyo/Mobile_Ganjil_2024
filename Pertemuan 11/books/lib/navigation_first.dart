import 'package:books/navigation_second.dart';
import 'package:flutter/material.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.purple.shade300;

  Future _navigateAndGetColor(BuildContext context) async {
    color = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const NavigationSecond(),
        ));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Fanesabhirawaning'),
        backgroundColor: Colors.purple.shade300,
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _navigateAndGetColor(context);
            },
            child: const Text("Change Color")),
      ),
    );
  }
}