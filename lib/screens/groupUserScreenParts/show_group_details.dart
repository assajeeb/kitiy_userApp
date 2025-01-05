import 'package:flutter/material.dart';

class ShowGroupDetails extends StatefulWidget {
  final String param1;
  final String param2;

  const ShowGroupDetails(this.param1, this.param2, {super.key});

  @override
  State<ShowGroupDetails> createState() => _ANewPageState();
}

class _ANewPageState extends State<ShowGroupDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("A New Page"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Parameter 1: ${widget.param1}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "Parameter 2: ${widget.param2}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "This page received the above parameters from the previous navigation.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
