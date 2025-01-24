import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'mall_tabs.dart';

class MallController extends GetxController with GetTickerProviderStateMixin {
  late TabController tabController;
  RxInt selectedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      selectedIndex.value = tabController.index;
    });
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}


class Mall extends StatefulWidget {
  const Mall({super.key});

  @override
  State<Mall> createState() => _MallState();
}

class _MallState extends State<Mall> {
  @override
  Widget build(BuildContext context) {
    final MallController mallController = Get.put(MallController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Mall",
          style: TextStyle(color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
        TabBar(
        dividerHeight: 2.6,
        dividerColor: Color(0xff808080).withOpacity(.5),
        indicatorColor: Colors.black,
        controller: mallController.tabController,
        labelColor: Colors.black,
        labelStyle: TextStyle(fontSize: 18.sp),
          tabs: [
            Tab(
                child: Text(
                  "Frame",
                  style: TextStyle(
                      fontSize: 16.sp,fontWeight: FontWeight.w400,
                      color: Colors.black),
                )),
            Tab(
                child: Text(
                  "Frame",
                  style: TextStyle(
                      fontSize: 16.sp,fontWeight: FontWeight.w400,
                      color: Colors.black),
                )),
            Tab(
                child: Text(
                  "Frame",
                  style: TextStyle(
                      fontSize: 16.sp,fontWeight: FontWeight.w400,
                      color: Colors.black),
                )),
            Tab(
                child: Text(
                  "Frame",
                  style: TextStyle(
                      fontSize: 16.sp,fontWeight: FontWeight.w400,
                      color:  Colors.black),
                )),
          ],
        ),
          Expanded(
            child: TabBarView(
              controller: mallController.tabController,
              children: [
                MallTabs(),
                MallTabs(),
                MallTabs(),
                MallTabs()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
