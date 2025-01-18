import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:kitti/screens/JoinKitiChatRoomUserParts/chat_room_exist.dart';
import 'package:kitti/screens/chat_page_add_member.dart';
import 'package:kitti/screens/groupUserScreenParts/group_screen.dart';
import 'package:kitti/screens/join_group_group_space.dart';
import 'package:kitti/screens/group_space_screen.dart';
import 'package:kitti/screens/group_speak_management.dart';
import 'package:kitti/screens/join_group_space/join_group_space_tp_14.dart';
import 'package:kitti/screens/join_kiti_chat_room_user2.dart';
import 'package:kitti/screens/roomManagement/create_room_page.dart';
import 'package:kitti/screens/search_group_page.dart';
import 'package:kitti/screens/homeScreenParts/groupPage.dart';

import 'package:kitti/screens/home_page_explore.dart';
import 'package:kitti/screens/join_group_tootls.dart';
import 'package:kitti/screens/join_kitti_chat_room_user.dart';
import 'package:kitti/screens/chat_page_info.dart';
import 'package:kitti/screens/voice_clup_notification.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(420, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,

        );
      },

    child:JoinKitiChatRoomUser2(),

  // child: CreateRoomPage(),
    );
  }
}

// CustomText(
// title: "Group Space",
// fontWeight: FontWeight.w400,
// fontSize: 18.sp,
// textColor: Colors.black,
// ),