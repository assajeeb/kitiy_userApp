import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final List<Map<String, dynamic>> groupList = [
  {
    "id": 12345,
    "img": "assets/groupPage/img1.png",
    "name": "Love's Red...",
    "des": "Everyone is with us...",
    "members_count": "22.4k"
  },
  {
    "id": 12346,
    "img": "assets/groupPage/img2.png",
    "name": "Passionate Hues",
    "des": "Together We Rise",
    "members_count": "22.4k"
  },
  {
    "id": 12347,
    "img": "assets/groupPage/img3.png",
    "name": "Crimson Embrace",
    "des": "Uniting Hearts",
    "members_count": "20.8k"
  },
  {
    "id": 12348,
    "img": "assets/groupPage/img4.png",
    "name": "Ruby Reflections",
    "des": "Strength in Unity",
    "members_count": "22.5k"
  },
  {
    "id": 12349,
    "img": "assets/groupPage/img1.png",
    "name": "Scarlet Symphony",
    "des": "A Bond Unbreakable",
    "members_count": "19.8k"
  },
  {
    "id": 12350,
    "img": "assets/groupPage/img2.png",
    "name": "Vermillion Dreams",
    "des": "Celebrating Togetherness",
    "members_count": "16.8k"
  }
];
final profileImage = "assets/profile.png";

class ShowGroupDetails extends StatefulWidget {
  final int g_id;

  const ShowGroupDetails(this.g_id, {super.key});

  @override
  State<ShowGroupDetails> createState() => _ShowGroupDetails();
}

class _ShowGroupDetails extends State<ShowGroupDetails> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> foundBook (int id) => groupList.firstWhere((g)=> g["id"] == widget.g_id);
    final title = foundBook(widget.g_id)["name"];
    final description = foundBook(widget.g_id)["des"];
    final image = foundBook(widget.g_id)["img"];
    final members = foundBook(widget.g_id)["members_count"];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black.withValues(alpha: 0.2), width: 1.0, style: BorderStyle.solid)
                )
              ),
              padding: EdgeInsets.only(bottom: 9.0),
              height: 60.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        image,
                        height: 60.h,
                        width: 60.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title,
                              style: TextStyle(fontSize: 22.0, color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "Members: $members",
                              style: TextStyle(fontSize: 18, color: Colors.grey.withValues(alpha: 0.8)),
                              textAlign: TextAlign.left,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.share)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.menu))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "Topic: $description",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),

            const SizedBox(height: 10),
            SizedBox(
              height: 50.h,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index){
                          return Container(
                            height: 50.h,
                              width: 50.h,
                              child: Image.asset("assets/user4.png")
                          );
                        },
                      ),
                    ),
                  GestureDetector(
                    child: Container(
                      height: 32.h,
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xff0B5F84),
                      ),
                      child: Column(
                        children: [
                          Text("Enter"),
                          Text("Chat Room")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                color: Colors.grey,
              ),
            ),
            Container(
              height: 180.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                  border: Border(
                      top: BorderSide(color: Colors.black.withValues(alpha: 0.1))
                  ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 40.h,
                            padding: EdgeInsets.symmetric(horizontal: 12.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black.withValues(alpha: 0.2)),
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: Row(
                              spacing: 10.0,
                              children: [
                                Icon(
                                  CupertinoIcons.smiley,
                                  size: 30.0,
                                  color: Colors.black.withValues(alpha: 0.6),
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Text Writing...!",
                                      hintStyle: TextStyle(
                                        color: Colors.grey
                                      )
                                    ),
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),


                                  ),
                                ),
                                Icon(
                                  Icons.image,
                                  size: 30.0,
                                  color: Colors.black.withValues(alpha: 0.6),
                                ),
                                Icon(
                                  CupertinoIcons.plus_circle,
                                  size: 30.0,
                                  color: Colors.black.withValues(alpha: 0.6),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black.withValues(alpha: 0.2)),
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.blueAccent
                            ),
                            child: Icon(
                              Icons.mic,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 40.0,
                            children: [
                              GestureDetector(
                                onTap: (){},
                                child: Column(
                                  spacing: 8.0,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        color: Colors.grey.withValues(alpha: 0.3),
                                      ),
                                      padding: EdgeInsets.all(20.0),
                                      child: Icon(
                                        Icons.video_camera_back,
                                        size: 30.0,
                                        color: Colors.black.withValues(alpha: 0.7),
                                      ),
                                    ),
                                    Text("Live Room", style: TextStyle(
                                      color: Colors.black.withValues(alpha: 0.4)
                                    ),)
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: (){},
                                child: Column(
                                  spacing: 8.0,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        color: Colors.grey.withValues(alpha: 0.3),
                                      ),
                                      padding: EdgeInsets.all(20.0),
                                      child: Icon(
                                        Icons.mic_none_outlined,
                                        size: 30.0,
                                        color: Colors.black.withValues(alpha: 0.7),
                                      ),
                                    ),
                                    Text("Voice Room", style: TextStyle(
                                        color: Colors.black.withValues(alpha: 0.4)
                                    ),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
