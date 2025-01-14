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
import 'package:kitti/screens/join_kiti_chat_room_user2.dart';
import 'package:kitti/screens/mainFeedBack/mainFeedBackPage.dart';
import 'package:kitti/screens/search_group_page.dart';
import 'package:kitti/util/colors.dart';
import 'package:kitti/widgets/custom_text.dart';

class RoomRecordAdminScreen extends StatefulWidget {
  const RoomRecordAdminScreen({super.key});

  @override
  State<RoomRecordAdminScreen> createState() => _RoomRecordAdminScreenState();
}

class _RoomRecordAdminScreenState extends State<RoomRecordAdminScreen> {

  List<Widget> widgetList = [
   RemoveWidget(),
    ApproveWidget()
  ];

  int _selectIndex = 0;

  void _onTabTapped(index) {
    setState(() {
      _selectIndex = index;
    });
  }


  Widget _buildTab(String title, int index) {
    bool isSelected = _selectIndex == index;

    return GestureDetector(
      onTap: () => _onTabTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w400,
                color: isSelected ? Colors.black : Colors.grey,
                fontFamily: "Microsoft Sans Serif"
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            margin: EdgeInsets.only(top: 4),
            height: 3,
            width: isSelected ? 50 : 0,
            color: Colors.black,
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.whiteColor,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: CustomText(
                title: "Admin Record",
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
              centerTitle: true,
            ),
            body: Column(
              children: [
                Container(
                  width: 246.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildTab("Remove", 0),
                      _buildTab("Approve", 1),

                    ],
                  ),
                ),
                Expanded(
                  child: RemoveWidget(),
                ),

                CustomText(title: "Only keep history in the least 1 months",)
              ],
            )));
  }
}

class RemoveWidget extends StatelessWidget {
  List<Map<String,dynamic>> removeList = [
    {
      "name":"Habib Khan",
      "id": "ID:1225411",
      "date":"21/02/2025",
      "image":"assets/25.png",
    },
    {
      "name":"Habib Khan",
      "id": "ID:1225411",
      "date":"21/02/2025",
      "image":"assets/25.png",
    }, {
      "name":"Habib Khan",
      "id": "ID:1225411",
      "date":"21/02/2025",
      "image":"assets/25.png",
    },
    {
      "name":"Habib Khan",
      "id": "ID:1225411",
      "date":"21/02/2025",
      "image":"assets/25.png",
    },
    {
      "name":"Habib Khan",
      "id": "ID:1225411",
      "date":"21/02/2025",
      "image":"assets/25.png",
    },
  ];


  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: removeList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30.r,
              child: Image.asset("assets/25.png"),
            ),
            title: CustomText(
              title: "${removeList[index]['name']}",
              fontSize:18.sp,fontWeight: FontWeight.w400,
              textColor: Colors.black,
            ),
            subtitle:  CustomText(
              title: "${removeList[index]['id']}",
              fontSize:15.sp,fontWeight: FontWeight.w400,
              textColor:  Colors.black54,
            ),
            trailing:  CustomText(
              title: "${removeList[index]['date']}",
              fontSize:15.sp,fontWeight: FontWeight.w400,
              textColor: Colors.black,
            ),

          );
        });
  }
}


class ApproveWidget extends StatelessWidget {
  List<Map<String,dynamic>> approveList = [
    {
      "name":"Habib Khan",
      "id": "ID:1225411",
      "date":"21/02/2025",
      "image":"assets/25.png",
    },
    {
      "name":"Habib Khan",
      "id": "ID:1225411",
      "date":"21/02/2025",
      "image":"assets/25.png",
    }, {
      "name":"Habib Khan",
      "id": "ID:1225411",
      "date":"21/02/2025",
      "image":"assets/25.png",
    },
    {
      "name":"Habib Khan",
      "id": "ID:1225411",
      "date":"21/02/2025",
      "image":"assets/25.png",
    },
  ];


  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: approveList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30.r,
              child: Image.asset("assets/25.png"),
            ),
            title: CustomText(
              title: "${approveList[index]['name']}",
              fontSize:18.sp,fontWeight: FontWeight.w400,
              textColor: Colors.black,
            ),
            subtitle:  CustomText(
              title: "${approveList[index]['id']}",
              fontSize:15.sp,fontWeight: FontWeight.w400,
              textColor:  Colors.black54,
            ),
            trailing:  CustomText(
              title: "${approveList[index]['date']}",
              fontSize:15.sp,fontWeight: FontWeight.w400,
              textColor: Colors.black,
            ),

          );
        });
  }
}
