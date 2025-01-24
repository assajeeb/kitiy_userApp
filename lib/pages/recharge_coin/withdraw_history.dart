import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WithdrawHistory extends StatefulWidget {
  const WithdrawHistory({super.key});

  @override
  State<WithdrawHistory> createState() => _WithdrawHistoryState();
}

class _WithdrawHistoryState extends State<WithdrawHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Colors.white,
        title: Text("Withdraw History",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),

            width: double.infinity,
            height: 375.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Color(0xffF1F1F1)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            Padding(
            padding:  EdgeInsets.symmetric(vertical: 15.h,horizontal: 10.w),
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
                          Image.asset("images/icons/aemo.png",width: 20.w,height: 20.h,),
                        ],
                      ),
                      SizedBox(height: 5.w,),
                      Text("014***********",style: TextStyle(color: Color(0xff000000),fontSize: 16.sp,fontWeight: FontWeight.w500,),),

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
                      ),

                historyItems(),
                historyItems(),
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

    return  Padding(
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
                    Image.asset("images/icons/aemo.png",width: 20.w,height: 20.h,),
                  ],
                ),
                SizedBox(height: 5.w,),
                //Text(subTitle,style: TextStyle(color: Color(0xff000000),fontSize: 16.sp,fontWeight: FontWeight.w500,),),
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
  }

}
