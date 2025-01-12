

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitti/screens/group_space_screen.dart';

class JoinGroupSpaceTp14 extends StatelessWidget {
  const JoinGroupSpaceTp14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios, // Replace with your preferred icon
            color: Colors.black, // Set icon color
            size: 16.0, // Adjust icon size
          ),
          onPressed: () {
            Navigator.of(context).pop(); // Handle back navigation
          },
        ),
        toolbarHeight: 40.0,
        title: Text(
          "Post",
          style: TextStyle(
              fontSize: 16.0,
              color: Colors.black
          ),
        ),
      ),
      body: Column(
        spacing: 10.0,
        children: [
          Container(
            height: 60.h,
            padding: EdgeInsets.only(top: 20.0),
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              spacing: 10.0,
              children: [
                SizedBox(
                  height: 50.0,
                  width: 50.0,
                  child: ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(1000.0),
                    child: Image.asset(
                        "assets/pic2.png",
                      fit: BoxFit.cover,

                    ),
                  ),
                ),

                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Describe your self below",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(width: 1.0, color: Colors.black)
                        )
                    ),
                  ),
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    border: Border.all(
                      width: 1.0,
                      color: Colors.black
                    ),

                  ),
                  child: Center(
                    child: Icon(
                      Icons.upload_file_outlined,
                      size: 25.0,
                      color: Colors.black,
                    ),
                  ),
                )

              ],
            ),
          ),

          Container(
            height: 160.h,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.0,
                color: Colors.black
              ),
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Whats on your mind",
                border: InputBorder.none
              ),

            ),
          ),
          Container(
            height: 50.h,
            margin: EdgeInsets.symmetric(horizontal: 20.0),

            child: Row(
              spacing: 20.0,
              children: [
                Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: Colors.black
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      Get.to(JoinGroupGroupSpace());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Center(
                        child: Text(
                            "Posts"
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ),
        ],
      ),

    );
  }
}
