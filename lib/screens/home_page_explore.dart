import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kitti/screens/Inbox_screen.dart';
import 'package:kitti/screens/create_page.dart';
import 'package:kitti/screens/homeScreenParts/feed_back.dart';
import 'package:kitti/screens/homeScreenParts/groupPage.dart';
import 'package:kitti/screens/homeScreenParts/home.dart';
import 'package:kitti/screens/mainFeedBack/mainFeedBackPage.dart';
import 'package:kitti/util/colors.dart';

class HomePageExplore extends StatefulWidget {
  const HomePageExplore({super.key});

  @override
  State<HomePageExplore> createState() => _HomePageExploreState();
}

class _HomePageExploreState extends State<HomePageExplore> {

  int _currentPageIndex = 1;

  final List<Widget> _newPages = [
    const FeedBack(),
    const CreateGroupWidget(),//home

    HomeGroupPageList()
  ];

  void _navigateToPage(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/icons/profile.png"),
        ),
        centerTitle: false,
        actions: [

          GestureDetector(
            onTap: () => _navigateToPage(0), // Navigate to "Create Group"
            child: Container(
              width: 40.w,
              height: 40.h,
              margin: EdgeInsets.symmetric(horizontal: 8.w),
              child: Image.asset("assets/icons/group.png"), // Replace with your image
            ),
          ),
          GestureDetector(

            onTap: () => _navigateToPage(1), // Navigate to "Feedback"
            child: Container(
              width: 40.w,
              height: 40.h,
              margin: EdgeInsets.symmetric(horizontal: 8.w),
              child: Icon(Icons.home), // Replace with your image
            ),
          ),
          GestureDetector(
            onTap: () => _navigateToPage(2), // Navigate to "Contact Us"
            child: Container(
              width: 40.w,
              height: 40.h,
              margin: EdgeInsets.symmetric(horizontal: 8.w),
              child: Image.asset("assets/icons/message.png"), // Replace with your image
            ),
          ),
        ],
      ),
      body: _newPages[_currentPageIndex],


      bottomNavigationBar: Container(
        margin: EdgeInsets.all(5.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PopupMenuButton<int>(
              position: PopupMenuPosition.over,
              child: Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.r),
                ),
                child: Icon(Icons.add, size: 25.h, color: Colors.black),
              ),
              itemBuilder: (context) => [
                // Popup menu item 1
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: [
                      Image.asset("assets/icons/creategroup.png",
                      height: 25.h, width: 25.h,
                      ),
                      SizedBox(width: 10),
                      Text("Create Group"),
                    ],
                  ),
                ),
                // Popup menu item 2
                PopupMenuItem(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FeedBackPage()),
                    );
                  },
                  value: 2,
                  child: Row(
                    children: [
                      Image.asset("assets/icons/feedback.png",
                        height: 25.h, width: 25.h,
                      ),
                      SizedBox(width: 10),
                      Text("Feedback"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Row(
                    children: [
                      Image.asset("assets/icons/contactus.png",
                        color: AppColors.btnColor,
                        height: 25.h, width: 25.h,
                      ),
                      SizedBox(width: 10),
                      Text("Contact Us"),
                    ],
                  ),
                ),
              ],
              onSelected: (value) {
                if (value == 1) {
                  Get.to(CreatePage());
                } else if (value == 2) {
                  print("About selected");
                }else if (value == 3) {
                  Get.to(InboxScreen());
                }
              },
              offset: Offset(0, 100),
              elevation: 2,
            ),
            Icon(Icons.search, size: 30.h, color: Colors.black),
          ],
        ),
      ),
    ));
  }


}

