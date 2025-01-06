import 'package:flutter/material.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child:
            Text(
              "Waiting for FIGMA design",
              style: TextStyle(
                color: Colors.black
              ),
            ),
          ),
        ),
      ],
    );
  }
}
