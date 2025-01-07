import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitiy_userapp/pages/top_up/topup_his_controller.dart';


class TopUpHistory extends StatefulWidget {
  const TopUpHistory({super.key});

  @override
  State<TopUpHistory> createState() => _TopUpHistoryState();
}

class _TopUpHistoryState extends State<TopUpHistory> {

  TopupHisController controller=Get.put(TopupHisController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Top Up History",
          style: TextStyle(color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.w400),
        ),

        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
        child: ListView.builder(
          itemCount: controller.historyData.length,
            itemBuilder: (context,index){
            return Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 10.sp,),
                    CircleAvatar(
                      radius: 25.r,
                      backgroundImage: AssetImage("images/image/smp.png"),
                    ),
                    SizedBox(width: 10.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [

                            Text(
                              controller.historyData[index]["name"],style: TextStyle(color: Color(0xff000000),fontSize: 16.sp,fontWeight: FontWeight.w500,),),
                            SizedBox(width: 5.sp,),
                            Image.asset("images/icons/aemo.png",width: 20.w,height: 20.h,),

                          ],
                        ),

                      Text(controller.historyData[index]["id"]
                      ,style: TextStyle(color: Color(0xff808080),fontSize: 15.sp,fontWeight: FontWeight.w400,),),

                        Row(
                          children: [
                            Text(controller.historyData[index]["status"]
                              ,style: TextStyle(color: Color(0xff000000),fontSize: 16.sp,fontWeight: FontWeight.w400,),),

                            SizedBox(width: 13.w,),
                            Image.asset("images/icons/blackD.png",width: 15.w,height: 15.h,),
                            SizedBox(width: 5.w,),
                            Text("50"
                              ,style: TextStyle(color: Color(0xff000000),fontSize: 15.sp,fontWeight: FontWeight.w400,),),



                          ],
                        ),

                      ],),
                    Spacer(),
                    Text(controller.historyData[index]["date"]
                      ,style: TextStyle(color: Color(0xff808080),fontSize: 12.sp,fontWeight: FontWeight.w400,),),



                  ],
                ),
                SizedBox(height: 5.w,),
                Divider(color: Colors.grey.withOpacity(.3),),

              ],
            );



        }),
      ) ,

    );
  }
}
