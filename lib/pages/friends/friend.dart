import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'followers_tab.dart';
import 'following_tab.dart';
import 'friend_tab.dart';

class FriendsController extends GetxController with GetTickerProviderStateMixin {
  late TabController tabController;
  RxInt selectedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 3, vsync: this);
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

class Friends extends StatelessWidget {
  const Friends({super.key});

  @override
  Widget build(BuildContext context) {
    final FriendsController controller = Get.put(FriendsController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Friends",
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

          Obx(() => TabBar(
            dividerHeight: 2.6,
            indicator: BoxDecoration(),
            controller: controller.tabController,
            labelColor: Color(0xff66429A),
            labelStyle: TextStyle(fontSize: 18.sp),

            tabs: [
              Tab(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
                    decoration: BoxDecoration(
                        color: controller.selectedIndex.value == 0 ? Color(0xff0B5F84) : Colors.white,
                        borderRadius: BorderRadius.circular(20.sp),
                        ),
                    child: Text(
                      "Friends",
                      style: TextStyle(
                          fontSize: 16.sp,fontWeight: FontWeight.w400,
                          color: controller.selectedIndex.value == 0 ? Colors.white : Colors.black),
                    ),
                  )),
              Tab(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 10.sp),
                    decoration: BoxDecoration(
                        color: controller.selectedIndex.value == 1 ? Color(0xff0B5F84) : Colors.white,
                        borderRadius: BorderRadius.circular(20.sp),
                        ),
                    child: Text(
                      "Followers",
                      style: TextStyle(
                          fontSize: 16.sp,fontWeight: FontWeight.w400,
                          color: controller.selectedIndex.value == 1 ? Colors.white : Colors.black),
                    ),
                  )),
              Tab(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 10.sp),
                    decoration: BoxDecoration(
                        color: controller.selectedIndex.value == 2 ? Color(0xff0B5F84) : Colors.white,
                        borderRadius: BorderRadius.circular(20.sp),
                        ),
                    child: Text(
                      "Followings",
                      style: TextStyle(
                          fontSize: 16.sp,fontWeight: FontWeight.w400,
                          color: controller.selectedIndex.value == 2 ? Colors.white : Colors.black),
                    ),
                  )),
            ],
          )),
          Expanded(
            child: TabBarView(
              controller: controller.tabController,
              children: [
                FriendsTab(),
                FollowersTab(),
                FollowingTab(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
