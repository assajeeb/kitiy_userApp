import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final List<Map<String, dynamic>> messages = [
    {
      'username': '-Stylish ✨dream Boy_✨',
      'message': 'এই ফরাম একটি Event অনুষ্ঠিত হবে, সাবস্ক্রাইব করতে টেস্ট করুন!',
      'time': '12:30 PM',
      'isCurrentUser': false,
    },
    {
      'username': '-Stylish ✨dream Boy_✨',
      'message': '',
      'image': "assets/cats.png",// Image placeholder
      'time': '12:31 PM',
      'isCurrentUser': false,
    },
    {
      'username': '-Stylish ✨dream Boy_✨',
      'message': 'এই ফরাম একটি Event অনুষ্ঠিত হবে, সাবস্ক্রাইব করতে টেস্ট করুন!',
      'time': '12:32 PM',
      'isCurrentUser': true,
    },
    {
      'username': 'Momin Khan, Niilima, -Stylish✨dream Boy_✨...And 12 Others',
      'message': 'Have Joined The Group. View All',
      'time': '12:33 PM',
      'isCurrentUser': false,
      'isSystemMessage': true,
    }
  ];

  ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        reverse: true,
        child: Column(
            children: messages.map((message) {
              if (message['isSystemMessage'] == true) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      message['message'],
                      style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                    ),
                  ),
                );
              }

              return Align(
                alignment: message['isCurrentUser'] ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: message['isCurrentUser'] ? MainAxisAlignment.end : MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (!message['isCurrentUser'])
                        CircleAvatar(
                          radius: 20.0,
                          backgroundColor: Colors.blue,
                          child: Text(
                            message['username'][0],
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      SizedBox(width: 10.0),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: message['isCurrentUser'] ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: message['isCurrentUser'] ? Colors.blue : Colors.grey[300],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
                              child: message['image'] != null
                                  ? Image.asset(
                                message['image'],
                                height: 100.0,
                                width: 100.0,
                                fit: BoxFit.cover,
                              )
                                  : Text(
                                message['message'],
                                style: TextStyle(
                                  color: message['isCurrentUser'] ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              message['time'],
                              style: TextStyle(
                                color: message['isCurrentUser'] ? Colors.white70 : Colors.black54,
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (message['isCurrentUser'])
                        SizedBox(width: 10.0),
                      if (message['isCurrentUser'])
                        CircleAvatar(
                          radius: 20.0,
                          backgroundColor: Colors.blue,
                          child: Text(
                            message['username'][0],
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                    ],
                  ),
                ),
              );
            }).toList()

        )
    );
  }
}