import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitiy_userapp/pages/recharge_coin/receive.dart';
import 'package:kitiy_userapp/pages/recharge_coin/send_tab.dart';




class GiftRecordController extends GetxController with GetTickerProviderStateMixin {
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

class GiftRecord extends StatefulWidget {
  const GiftRecord({super.key});

  @override
  State<GiftRecord> createState() => _GiftRecordState();
}

class _GiftRecordState extends State<GiftRecord> {
  @override
  Widget build(BuildContext context) {

    final GiftRecordController giftRecordController= Get.put(GiftRecordController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Gift Record",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Colors.black),),
        centerTitle: true,
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

            indicator: BoxDecoration(),
            dividerHeight: 0,
            controller: giftRecordController.tabController,
            labelColor: Color(0xff66429A),
            labelStyle: TextStyle(fontSize: 18.sp),

            tabs: [
              Tab(
                  child: Container(
                    width: double.infinity,
                   height: 48.h,
                  
                    decoration: BoxDecoration(
                      color: giftRecordController.selectedIndex.value == 0 ? Color(0xffF1F1F1) : Colors.white,
                      borderRadius: BorderRadius.circular(5.sp),
                    ),
                    child: Center(
                      child: Text(
                        "Send",
                        style: TextStyle(
                            fontSize: 18.sp,fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  )),
              Tab(
                  child: Container(
                    width: double.infinity,
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: giftRecordController.selectedIndex.value == 1 ? Color(0xffF1F1F1) : Colors.white,
                      borderRadius: BorderRadius.circular(5.sp),
                    ),
                    child: Center(
                      child: Text(
                        "Receive",
                        style: TextStyle(
                            fontSize: 18.sp,fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  )),

            ],
          )),
          Expanded(
            child: TabBarView(
              controller: giftRecordController.tabController,
              children: [
                 SendTab(),
                ReceiveTab(),


              ],
            ),
          ),
        ],
      ),

    );
  }
}
