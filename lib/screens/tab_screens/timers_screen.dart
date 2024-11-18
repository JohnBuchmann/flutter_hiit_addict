import 'package:flutter/material.dart';

class TimersScreen extends StatelessWidget {
  final String tempText;
  const TimersScreen({super.key, this.tempText = 'Default Text'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text('hi hi')),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Alert bro'),
              content: const Text('This is an alert dialog......'),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Close')),
              ],
            ),
          );
        },
        child: const Icon(Icons.access_time),
      ),
    );
  }
}
