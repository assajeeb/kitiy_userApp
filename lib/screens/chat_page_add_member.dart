import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kitti/widgets/custom_text.dart';

import '../widgets/circular_image.dart';

class ChatPageAddMember extends StatefulWidget {
  @override
  _ChatPageAddMemberState createState() => _ChatPageAddMemberState();
}

class _ChatPageAddMemberState extends State<ChatPageAddMember> {
  // Dummy contact list
  final List<Map<String, dynamic>> contacts = [
    {"name": "Md Habib khan", "img":"assets/u2.png" ,"isSelected": false},
    {"name": "Md Habib khan", "img":"assets/u2.png" ,"isSelected": false},
    {"name": "Md Habib khan", "img":"assets/u2.png" ,"isSelected": false},
    {"name": "Md Habib khan", "img":"assets/u2.png" ,"isSelected": false},
    {"name": "Md Habib khan", "img":"assets/u2.png" ,"isSelected": false},
    {"name": "Md Habib khan", "img":"assets/u2.png" ,"isSelected": false},
    {"name": "Md Habib khan", "img":"assets/u2.png" ,"isSelected": false},
    {"name": "Md Habib khan", "img":"assets/u2.png" ,"isSelected": false},
    {"name": "Md Habib khan", "img":"assets/u2.png" ,"isSelected": false},
    {"name": "Md Habib khan", "img":"assets/u2.png" ,"isSelected": false},
    {"name": "Md Habib khan", "img":"assets/u2.png" ,"isSelected": false},
    {"name": "Md Habib khan", "img":"assets/u2.png" ,"isSelected": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(
          title: "Add Member",
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        )
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search TextFormField
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Contacts',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 16),

            // My Contact Header
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  title: 'My Contacts',
                  fontSize: 16.sp,
                  textColor: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
                Divider(thickness: 1, color: Colors.grey),
              ],
            ),
            SizedBox(height: 16),

            // ListView for contacts
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  final contact = contacts[index];
                  return ListTile(
                    leading: CircularImage(
                      img:"assets/u2.png",
                      size: 30.h,

                    ),

                    title: CustomText(
                      title: '${contact['name']}',
                      fontSize: 16.sp,
                      textColor: Colors.black,
                      fontWeight: FontWeight.w400,
                    ), 
                    trailing: IconButton(
                      icon: Icon(
                        contact['isSelected']
                            ? Icons.check_circle
                            : Icons.circle_outlined,
                        color:
                            contact['isSelected'] ? Colors.lightBlue : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          contact['isSelected'] = !contact['isSelected'];
                        });
                      },
                    ),
                    onTap: () {
                      setState(() {
                        contact['isSelected'] = !contact['isSelected'];
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
