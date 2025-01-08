import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:kitti/screens/group_management_screen.dart';
import 'package:kitti/screens/group_space_screen.dart';
import 'package:kitti/screens/group_speak_management.dart';

import 'package:kitti/screens/home_screen.dart';
import 'package:kitti/screens/store_screen.dart';


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
      child:HomeScreen(),
    );
  }
}

// CustomText(
// title: "Group Space",
// fontWeight: FontWeight.w400,
// fontSize: 18.sp,
// textColor: Colors.black,
// ),