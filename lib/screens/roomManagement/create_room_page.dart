
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final data = {
  "diamond": "assets/mng_room/diamond.png",
  "gift":"assets/mng_room/gift.png",
  "room_name": "আজাইরা গপ্পো",
  "group_name":"꧁DOSTI💖TAK꧂",
  "profile_pic": "assets/mng_room/prof.png",
  "members": [
    {
      "name": "Stylish boy",
      "image": "assets/mng_room/lb1.png"
    },

    {
      "name": "Stylish boy",
      "image": "assets/mng_room/lb2.png"
    },
    {
      "name": "3",
      "image": "assets/mng_room/lb3.png"
    },
    {
      "name": "4",
      "image": "assets/mng_room/lb4.png"
    },
    {
      "name": "5",
      "image": "assets/mng_room/lb5.png"
    },
  ]
};

class CreateRoomPage extends StatelessWidget {
  const CreateRoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios, // Replace with your preferred icon
            color: Colors.white, // Set icon color
            size: 16.0, // Adjust icon size
          ),
          onPressed: () {
            Navigator.of(context).pop(); // Handle back navigation
          },
        ),
        toolbarHeight: 40.0,
        backgroundColor: const Color(0xff041E43),
        title: Text(
          "Manage Room",
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: const Color(0xff041E43),
                    height: 50.h,
                    padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.3),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Row(
                            spacing: 10.0,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 30.h,
                                height: 30.h,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(width: 1.0, color: Colors.white)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  clipBehavior: Clip.hardEdge,
                                  child: Image.asset(
                                    "${data['profile_pic']}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${data["group_name"]}",
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white
                                    ),
                                  ),
                                  Text(
                                    "ID: 123456",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.white.withValues(alpha: 0.6)
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Row(
                            spacing: 5.0,
                            children: [
                              Container(
                                padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    color: Colors.white.withValues(alpha: 0.3)
                                ),
                                child: Row(
                                  spacing: 4.0,
                                  children: [
                                    Icon(
                                      CupertinoIcons.profile_circled,
                                      color: Colors.white,
                                      size: 14.0,
                                    ),
                                    Text(
                                      "25",
                                      style: TextStyle(
                                          color: Colors.white,
                                        fontSize: 14.0
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(
                                  CupertinoIcons.power,
                                  size: 24.0,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              color: const Color(0xff041E43),
                            ),
                            child: Row(
                              spacing: 6.0,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      color: Colors.white.withValues(alpha: 0.3)
                                  ),
                                  child: Row(
                                    spacing: 4.0,
                                    children: [
                                      Image.asset(
                                        "${data["diamond"]}",
                                        height: 16.0,
                                      ),
                                      Text(
                                        "451",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.0
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      color: Colors.white.withValues(alpha: 0.3)
                                  ),
                                  child: Row(
                                    spacing: 4.0,
                                    children: [
                                      Image.asset(
                                        "${data["gift"]}",
                                        height: 16.0,
                                      ),
                                      Text(
                                        "Record",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.0
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ),
                          SizedBox()
                        ],
                      ),
                      Positioned(
                        right: 0.0,
                        child: Container(

                          child: Text("Positioned"),
                        ),
                      )
                    ]
                  )
                ],
              ),
            ),
            Expanded(
              child: Text(
                "Hello",
                style: TextStyle(
                  color: Colors.black
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
