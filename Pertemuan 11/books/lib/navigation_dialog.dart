import 'package:flutter/material.dart';

class NavigationDialog extends StatefulWidget {
  const NavigationDialog({super.key});

  @override
  State<NavigationDialog> createState() => _NavigationDialogState();
}

class _NavigationDialogState extends State<NavigationDialog> {
  Color color = Colors.blue.shade700;

  _showColorDialog(BuildContext context) async {
    await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) {
          return AlertDialog(
            title: const Text("Very important question"),
            content: const Text("Please choose a color"),
            actions: [
              TextButton(
                  onPressed: () {
                    color = Colors.purple.shade300;
                    Navigator.pop(context, color);
                  },
                  child: const Text("Purple")),
              TextButton(
                  onPressed: () {
                    color = Colors.blue.shade300;
                    Navigator.pop(context, color);
                  },
                  child: const Text("Blue")),
              TextButton(
                  onPressed: () {
                    color = Colors.green.shade300;
                    Navigator.pop(context, color);
                  },
                  child: const Text("Green")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('BNavigation Dialog Screen'),
        backgroundColor: Colors.purple,
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              await _showColorDialog(context);
              setState(() {});
            },
            child: const Text('Change Color')),
      ),
    );
  }
}