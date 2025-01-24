import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitiy_userapp/pages/recharge_coin/recharge.dart';
import 'package:kitiy_userapp/pages/recharge_coin/withdraw.dart';

import 'convert.dart';



class RedeemBens extends StatefulWidget {
  @override
  _RedeemBensState createState() => _RedeemBensState();
}

class _RedeemBensState extends State<RedeemBens>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  RxInt selectedIndex = 0.obs;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      selectedIndex.value = tabController.index;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Redeem Bens",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Colors.black),),
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

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15.w,),
            child: Container(
              height: 134.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Color(0xffF1F1F1)
              ),
              child: Obx(
                ()=> Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    selectedIndex==2?Text("Your Current Diamond",style: TextStyle(
                        fontSize: 15.sp,fontWeight: FontWeight.w400,color: Color(0xff0B5F84)
                    ),): Text("Your Current Bens",style: TextStyle(
                        fontSize: 15.sp,fontWeight: FontWeight.w400,color: Color(0xff0B5F84)
                    ),),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        selectedIndex==2?Image.asset("images/icons/blackD.png",width: 25.w,height: 23.57.h,):Image.asset("images/icons/coin.png",width: 25.w,height: 23.57.h,),

                        SizedBox(width: 4),
                        Text(
                          '0.50',
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400,color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 15.h),


          // Middle TabBar
          TabBar(
            controller: tabController,
            indicator: BoxDecoration(),
            dividerHeight: 0,
            labelColor: Color(0xff202020),
            labelStyle: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400),
            unselectedLabelColor: Colors.grey,

            tabs: [
              Obx(
                ()=> Tab(

                  child: Container(
                    height: 260.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: selectedIndex.value==0? Color(0xffF1F1F1): Colors.white
                    ),
                    child: Center(child: Text("Convert",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),)),

                    ),
                  ),
              ),

              Obx(
                    ()=> Tab(

                  child: Container(
                    height: 260.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: selectedIndex.value==1? Color(0xffF1F1F1): Colors.white
                    ),
                    child: Center(child: Text("Withdraw",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),)),

                  ),
                ),
              ),
              Obx(()=> Tab(

                  child: Container(
                    height: 260.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: selectedIndex.value==2? Color(0xffF1F1F1): Colors.white
                    ),
                    child: Center(child: Text("Recharge",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),)),

                  ),
                ),
              ),
            ],
          ),

          // TabBarView
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Convert(),
                Withdraw(),
                Recharge(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
