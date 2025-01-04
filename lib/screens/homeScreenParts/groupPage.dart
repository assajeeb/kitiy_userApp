import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroupPage extends StatelessWidget {
  GroupPage({super.key});

  final List<Map<String, dynamic>> gridItems = [
    {
      "name": "ভালবাসার লাল ...",
      "des": "সবাই আমামদের সঙ্গে থা...",
      "img": "assets/groupPage/img1.png",
      "id": 12345
    },
    {
      "name": "ভালবাসার লাল ...",
      "des": "সবাই আমামদের সঙ্গে থা...",
      "img": "assets/groupPage/img2.png",
      "id": 12346
    },
    {
      "name": "ভালবাসার লাল ...",
      "des": "সবাই আমামদের সঙ্গে থা...",
      "img": "assets/groupPage/img3.png",
      "id": 12347
    },
    {
      "name": "ভালবাসার লাল ...",
      "des": "সবাই আমামদের সঙ্গে থা...",
      "img": "assets/groupPage/img4.png",
      "id": 12348
    },
    {
      "name": "ভালবাসার লাল ...",
      "des": "সবাই আমামদের সঙ্গে থা...",
      "img": "assets/groupPage/img1.png",
      "id": 12349
    },
    {
      "name": "ভালবাসার লাল ...",
      "des": "সবাই আমামদের সঙ্গে থা...",
      "img": "assets/groupPage/img2.png",
      "id": 12350
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10.h, bottom: 5.h, left: 10.w),
            width: double.infinity,
            child: Text(
              "My Group",
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF1A1636),
            ),
            height: 100.h, // Set a height for the horizontal slider
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: gridItems.length, // Add itemCount
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 90.w,
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.w),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.asset(
                          "${gridItems[index]['img']}",
                          height: 60.h,
                          width: 90.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 45.h,
                        right: 5.w,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 4.w,
                            vertical: 1.h,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: Text(
                            "ID: ${gridItems[index]['id']}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.sp,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Column(
                          children: [
                            Text(
                              "${gridItems[index]['name']}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.sp,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "${gridItems[index]['des']}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8.sp,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20.h),
          // Placeholder for other content

          Container(
            height: 300.h,
            color: Colors.grey[200],
            child: Center(
              child: Text(
                "Additional Content Here",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
