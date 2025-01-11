import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:kitiy_userapp/pages/friends_tab/friend.dart';
import 'package:kitiy_userapp/pages/general_profile/profile.dart';
import 'package:kitiy_userapp/pages/room_profile/room_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(420, 894),
      builder:(context, child)=>  GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.light(),
        home: RoomProfile(),// Friends()
      ),
    );
  }
}

