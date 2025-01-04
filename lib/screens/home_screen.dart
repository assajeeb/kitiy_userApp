import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kitti/screens/create_group.dart';
import 'package:kitti/screens/homeScreenParts/feedBack.dart';
import 'package:kitti/screens/homeScreenParts/groupPage.dart';
import 'package:kitti/screens/homeScreenParts/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentPageIndex = 0;

  final List<Widget> _newPages = [
    const CreateGroupWidget(),
    const FeedBack(),
    GroupPage(),
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
      appBar: AppBar(
        leading: Container(
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
                      Icon(Icons.star),
                      SizedBox(width: 10),
                      Text("Create Group"),
                    ],
                  ),
                ),
                // Popup menu item 2
                PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: [
                      Icon(Icons.chrome_reader_mode),
                      SizedBox(width: 10),
                      Text("Feedback"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Row(
                    children: [
                      Icon(Icons.chrome_reader_mode),
                      SizedBox(width: 10),
                      Text("Contact Us"),
                    ],
                  ),
                ),
              ],
              onSelected: (value) {
                if (value == 1) {
                  Get.to(CreateGroup());
                } else if (value == 2) {
                  print("About selected");
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

