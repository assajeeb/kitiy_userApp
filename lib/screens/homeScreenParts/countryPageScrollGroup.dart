import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountryPageScrollGroup extends StatelessWidget {
  CountryPageScrollGroup({super.key});

  final List<Map<String, dynamic>> gridItems = [
    {
      "name": "SL- Sweet Love a...",
      "des": "আসো সবাই আদা দেই",
      "img": "assets/pic3.png",
      "id": 1234
    },
    {
      "name": "কয়েন রিচার্জ রুম",
      "des": "Wellcome my all friends",
      "img": "assets/pic1.png",
      "id": 1234
    },
    {
      "name": "✿ƊЄƑƛƲƬЄƦƓ ...",
      "des": "Wellcome my all friends",
      "img": "assets/pic2.png",
      "id": 1234
    },
    {
      "name": "SL- Sweet Love a...",
      "des": "আসো সবাই আদা দেই",
      "img": "assets/pic3.png",
      "id": 1234
    },
    {
      "name": "বি-বাড়িয়া আড্ডা ম...",
      "des": "Wellcome! Please abide...",
      "img": "assets/pic4.png",
      "id": 1234
    },
    {
      "name": "কয়েন রিচার্জ রুম",
      "des": "Wellcome my all friends",
      "img": "assets/pic1.png",
      "id": 1234
    },
    {
      "name": "SL- Sweet Love a...",
      "des": "আসো সবাই আদা দেই",
      "img": "assets/pic3.png",
      "id": 1234
    },
    {
      "name": "বি-বাড়িয়া আড্ডা ম...",
      "des": "Wellcome! Please abide...",
      "img": "assets/pic4.png",
      "id": 1234
    },
    {
      "name": "কয়েন রিচার্জ রুম",
      "des": "Wellcome my all friends",
      "img": "assets/pic2.png",
      "id": 1234
    }
  ];

  @override
  Widget build(BuildContext context) {
    gridItems.shuffle();
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 10.w,
        childAspectRatio: 0.95, // Adjusted aspect ratio for better height
      ),
      itemCount: gridItems.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: const Color(0xFF2B2E4A), // Card background color
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    // Main Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "${gridItems[index]['img']}",
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                    // Bottom-Right ID within the image
                    Positioned(
                      bottom: 8.h,
                      right: 8.w,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 2.h),
                        decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.4),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Text(
                          "ID: ${gridItems[index]['id']}",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    // Top-Left Badge
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 4.h),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icons/vip.png",
                              width: 12.w,
                              height: 12.h,
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              "SVIP${index + 1}",
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Top-Right Text with Blur and Rounded Background
                    Positioned(
                      top: 8.h,
                      right: 8.w,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 2.h),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.3),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "11",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6.h),
              // Title Text
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Text(
                  "${gridItems[index]['name']}",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 4.h),
              // Subtitle Text
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Text(
                  "Welcome my all friends",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(height: 8.h),
            ],
          ),
        );
      },
    );
  }
}