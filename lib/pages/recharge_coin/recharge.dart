import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Recharge extends StatefulWidget {
  const Recharge({super.key});

  @override
  State<Recharge> createState() => _RechargeState();
}

class _RechargeState extends State<Recharge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 10.h),
        child: Column(
          children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               allItems(),
               allItems(),
               allItems(),
             ],
           ),
            SizedBox(height: 15.h ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                allItems(),
                allItems(),
                allItems(),
              ],
            ),

          ],
        ),
      ),


    );
  }

  Widget allItems(){
    return  Container(
      width: 120.w,
      height: 126.h,
      decoration: BoxDecoration(
          color: Color(0xffF1F1F1),
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(
              color: Color(0xff808080),
              width: 1.w
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/icons/blackD.png",width: 25.w,height: 23.57.h,),
              SizedBox(width: 5.w,),
              Text("10",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w400,color: Color(0xff000000)),)
            ],
          ),
          SizedBox(height: 10.h ,),
          Text("BDT 30.00",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Color(0xff808080))),
          SizedBox(height: 15.h ,),
          Container(
              width: 108.w,
              height: 27.h,
              decoration: BoxDecoration(
                  color: Color(0xff0B5F84),
                  borderRadius: BorderRadius.circular(25.r)
              ),
              child: Center(child: Text("Recharge",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Colors.white),)))
        ],
      ),
    );
  }
}
