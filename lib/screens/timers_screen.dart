import 'package:flutter/material.dart';

class TimersScreen extends StatelessWidget {
  final String tempText;
  const TimersScreen({super.key, this.tempText = 'Default Text'});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text(tempText),
      ),
    );
  }
}
