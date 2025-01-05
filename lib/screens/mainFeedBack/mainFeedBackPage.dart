import 'package:flutter/material.dart';

class FeedBackPage extends StatelessWidget {
  const FeedBackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feedback Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Feedback [Fig Design Required]",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Here is some static data about feedback:",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.feedback, color: Colors.blueAccent),
              title: Text("User 1"),
              subtitle: Text("The app works great, but I'd love to see more features."),
            ),
            const ListTile(
              leading: Icon(Icons.feedback, color: Colors.blueAccent),
              title: Text("User 2"),
              subtitle: Text("The UI is very clean, keep it up!"),
            ),
            const ListTile(
              leading: Icon(Icons.feedback, color: Colors.blueAccent),
              title: Text("User 3"),
              subtitle: Text("Overall, I like it, but the performance could be improved."),
            ),
          ],
        ),
      ),
    );
  }
}
