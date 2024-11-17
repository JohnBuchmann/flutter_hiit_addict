import 'package:flutter/material.dart';

class TimersScreen extends StatelessWidget {
  final String tempText;
  const TimersScreen({super.key, this.tempText = 'Default Text'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(tempText)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Alert'),
              content: const Text('This is an alert dialog.......'),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Close')),
              ],
            ),
          );
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
