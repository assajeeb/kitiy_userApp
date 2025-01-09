import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'friend_list.dart';
import 'friend_req.dart';



class FrndsTabController extends GetxController with GetTickerProviderStateMixin {
  late TabController tabController;
  RxInt selectedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
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

class FrndsTab extends StatelessWidget {
  const FrndsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final FrndsTabController controller = Get.put(FrndsTabController());

    return Scaffold(
      backgroundColor: Colors.white,

      //tabbar hobena
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Friend",
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

            labelPadding: EdgeInsets.only(bottom: 20.h),

            tabs: [
              Tab(
                  child: Container(
                    padding: EdgeInsets.all(10.r),
                    decoration: BoxDecoration(
                      color: controller.selectedIndex.value == 0 ? Color(0xff0B5F84) : Colors.white,
                      borderRadius: BorderRadius.circular(5.sp),
                      border: Border.all(
                        color: Color(0xff0B5F84)
                      )
                    ),
                    child: Icon(Icons.people_alt,size: 28.r,color: controller.selectedIndex.value == 0 ? Colors.white :  Color(0xff0B5F84)),
                    ),
                  ),
              Tab(
                  child: Container(
                    padding: EdgeInsets.all(10.r),
                    decoration: BoxDecoration(
                      color: controller.selectedIndex.value == 1 ? Color(0xff0B5F84) : Colors.white,
                      borderRadius: BorderRadius.circular(5.sp),
                        border: Border.all(
                            color: Color(0xff0B5F84)
                        )
                    ),
                    child: Icon(Icons.person_add_alt_1,color: controller.selectedIndex.value == 1 ? Colors.white :  Color(0xff0B5F84)),
                    ),
                  )

            ],
          )),
          Expanded(
            child: TabBarView(
              controller: controller.tabController,
              children: [
                FriendList(),
                FriendReq(),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
