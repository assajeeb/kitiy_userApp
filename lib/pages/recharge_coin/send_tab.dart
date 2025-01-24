import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SendController extends GetxController with GetTickerProviderStateMixin {
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


class SendTab extends StatefulWidget {
  const SendTab({super.key});

  @override
  State<SendTab> createState() => _SendTabState();
}

class _SendTabState extends State<SendTab> {
  @override
  Widget build(BuildContext context) {

    final SendController sendController= Get.put(SendController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15.h,),

         TabBar(

            indicator: BoxDecoration(),
            controller: sendController.tabController,
            labelColor: Color(0xff66429A),
            labelStyle: TextStyle(fontSize: 18.sp),
            dividerHeight: 0,



            tabs: [
              Tab(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Today",
                        style: TextStyle(
                            fontSize: 15.sp,fontWeight: FontWeight.w400,
                            color: Color(0xff0B5F84)),
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                             Image.asset("images/icons/dd.png",width: 25.w,height: 15.h,),
                            SizedBox(width: 5.h,),
                            Text(
                              "0",
                              style: TextStyle(
                                  fontSize: 15.sp,fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),

                    ],
                  )),
              Tab(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "This Month",
                        style: TextStyle(
                            fontSize: 15.sp,fontWeight: FontWeight.w400,
                            color: Color(0xff0B5F84)),
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("images/icons/dd.png",width: 25.w,height: 15.h,),
                          SizedBox(width: 5.h,),
                          Text(
                            "0",
                            style: TextStyle(
                                fontSize: 15.sp,fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  )),

            ],
          ),
          SizedBox(
            height: 410.h,
            child: TabBarView(
              controller: sendController.tabController,
              children: [
                historyItems(),
                historyItems(),


              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 15.w),
            child: Text("Only keep history in the least 2 months",style: TextStyle(color: Color(0xff808080),fontSize: 14.sp,fontWeight: FontWeight.w400,),),
          ),
        ],
      ),
    );
  }

  Widget historyItems(){

    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),

      width: double.infinity,
      height: 375.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Color(0xffF1F1F1)
      ),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index){
          return Padding(
            padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
            child: SizedBox(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25.r,
                    backgroundImage: AssetImage("images/image/smp.png"),
                  ),
                  SizedBox(width: 10.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Tamanna",style: TextStyle(color: Color(0xff000000),fontSize: 16.sp,fontWeight: FontWeight.w500,),),
                          SizedBox(width: 5.w,),
                          Image.asset("images/icons/aemo.png",width: 20.w,height: 20.h,),
                        ],
                      ),
                      SizedBox(height: 8.w,),
                      Row(

                        children: [
                          Image.asset("images/icons/bdg1.png",width: 17.98,height: 20,),
                          SizedBox(width: 3.w,),
                          Image.asset("images/icons/bdg2.png",width: 16.98,height: 20,),
                          SizedBox(width: 3.w,),
                          Image.asset("images/icons/bdg3.png",width: 27.98,height: 20,),

                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("images/icons/yellowD.png",width: 20.w,height: 20.w,),
                          SizedBox(width: 5.w,),
                          Text("0.50",style: TextStyle(color: Color(0xff0B5F84),fontSize: 15.sp,fontWeight: FontWeight.w400),),

                        ],
                      ),
                      SizedBox(height: 5.w,),
                      Text("20/1/1025"
                        ,style: TextStyle(color: Color(0xff808080),fontSize: 12.sp,fontWeight: FontWeight.w400,),),

                    ],
                  ),

                ],

              ),


            ),
          );
        },

      ),
    );
  }
}
