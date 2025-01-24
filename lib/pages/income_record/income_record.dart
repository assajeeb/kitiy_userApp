import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'income_r_controller.dart';

class IncomeRecord extends StatefulWidget {
  const IncomeRecord({super.key});

  @override
  State<IncomeRecord> createState() => _IncomeRecordState();
}

class _IncomeRecordState extends State<IncomeRecord> {
  final IncomeRController incomeRController= Get.put(IncomeRController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Income Record",
          style: TextStyle(color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.h),
                width: double.infinity,
                height: 280.h,
                decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    borderRadius: BorderRadius.circular(15.r)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20.h,),
                    Text("Total Income",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w400),),
                    SizedBox(height: 20.h,),
                    Text("1.50",style: TextStyle(color: Colors.black,fontSize: 25.sp,fontWeight: FontWeight.w700),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/icons/dd.png",width: 25.w,height: 15.h,),
                        SizedBox(width: 5.w,),
                        Text("Your Total Diamond",style: TextStyle(color: Color(0xff0B5F84),fontSize: 15.sp,fontWeight: FontWeight.w400),),
                      ],
                    ),
                    SizedBox(height: 5.w,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                      height: 50.h,
                      padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 15.w),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Image.asset("images/icons/yellowD.png",width: 20.w,height: 20.w,),
                              SizedBox(width: 5.w,),
                              Text("0.50",style: TextStyle(color: Color(0xff0B5F84),fontSize: 15.sp,fontWeight: FontWeight.w400),),

                            ],
                          ),
                          Text("|",style: TextStyle(fontSize: 25.sp,color: Colors.grey.withOpacity(0.2)),),
                          Row(
                            children: [
                              Image.asset("images/icons/blackD.png",width: 20.w,height: 20.w,),
                              SizedBox(width: 5.w,),
                              Text("0.50",style: TextStyle(color: Color(0xff0B5F84),fontSize: 15.sp,fontWeight: FontWeight.w400),),
                              SizedBox(width: 5.w,),
                              Image.asset("images/icons/cart.png",width: 25.w,height: 25.w,),

                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.w,),
                      height: 50.h,
                      padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 15.w),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("images/icons/coin.png",width: 20.w,height: 20.w,),
                          SizedBox(width: 5.w,),
                          Text("0.50",style: TextStyle(color: Color(0xff0B5F84),fontSize: 15.sp,fontWeight: FontWeight.w400),),
                          SizedBox(width: 5.w,),
                          Image.asset("images/icons/arrow.png",width: 25.w,height: 25.w,),

                        ],
                      ),
                    ),

                  ],
                ),
              ),

              Row(
                children: [
                  Text("Income History",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w400,))
                  ,Spacer(),
                  Row(
                    children: [
                      Text("20/02/2024",style: TextStyle(color: Color(0xff808080),fontSize: 16.sp,fontWeight: FontWeight.w400,)),
                      SizedBox(width: 5.h,),
                    Icon(Icons.keyboard_arrow_down_rounded,size: 20.r,color: Color(0xff808080),)
                    ],
                  )

                ],
              ),
              SizedBox(height: 12.h,),
              Container(
                height: 390.h,
                decoration: BoxDecoration(
                  color: Color(0xffEBECF0),
                  borderRadius: BorderRadius.circular(15.r),
                ),

                child: ListView.builder(
                  itemCount: incomeRController.incomeData.length,
                  itemBuilder: (context,index){
                    return  Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 12.h),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25.r,
                            backgroundImage: AssetImage(incomeRController.incomeData[index]["avatar"]),
                          ),
                          SizedBox(width: 15.w,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(incomeRController.incomeData[index]["name"],style: TextStyle(color: Color(0xff0B5F84),fontSize: 16.sp,fontWeight: FontWeight.w500),),
                              SizedBox(height: 5.h,),
                              Text(incomeRController.incomeData[index]["id"],style: TextStyle(color: Color(0xff808080),fontSize: 14.sp,fontWeight: FontWeight.w400)),

                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset("images/icons/coin.png",width: 20.w,height: 20.w,),
                                  SizedBox(width: 3.w,),
                                  Text(incomeRController.incomeData[index]["subtitle"],style: TextStyle(color: Color(0xff202020),fontSize: 15.sp,fontWeight: FontWeight.w400)),
                                ],
                              ),
                              SizedBox(height: 5.h,),
                              Text(incomeRController.incomeData[index]["date"],style: TextStyle(color: Color(0xff808080),fontSize: 12.sp,fontWeight: FontWeight.w400)),

                            ],
                          )
                        ],
                      ),
                    );
                  },

                ),


              ),
              SizedBox(height: 10.h,),
              Text("Only keep history in the least 2 months",style: TextStyle(color: Color(0xff808080),fontSize: 14.sp,fontWeight: FontWeight.w400,),),
            ],
          ),
        ),
      )
    );
  }

}
