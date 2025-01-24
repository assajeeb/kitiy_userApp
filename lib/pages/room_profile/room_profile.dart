import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitiy_userapp/pages/room_profile/room_pro_details.dart';

import '../Agency/agency.dart';
import '../SVIP/svip.dart';
import '../badge/my_badge.dart';
import '../host_reqest/host_req.dart';
import '../income_record/income_record.dart';
import '../mall/mall.dart';
import '../my_nobel/my_nobel.dart';
import '../recharge_coin/recharge_coin.dart';
import '../top_up/top_up.dart';

class RoomProfile extends StatefulWidget {
  const RoomProfile({super.key});

  @override
  State<RoomProfile> createState() => _RoomProfileState();
}

class _RoomProfileState extends State<RoomProfile> {

  // final List<Map<String, dynamic>> jsonData = [
  //   {
  //     "image": "dd",
  //     "text": "Recharge Coin",
  //     "route" : "RechargeCoin()"
  //
  //
  //   },
  //   {
  //     "image": "dd",
  //     "text": "Income Record"
  //   },
  //   {
  //     "image": "dd",
  //     "text": "Badge"
  //   },
  //   {
  //     "image": "dd",
  //     "text": "Mall"
  //   },
  //   {
  //     "image": "dd",
  //     "text": "Friendship"
  //   },
  //   {
  //     "image": "dd",
  //     "text": "Host Centre"
  //   },
  //   {
  //     "image": "dd",
  //     "text": "Agency"
  //   },
  //   {
  //     "image": "dd",
  //     "text": "Top-up"
  //   },
  //   {
  //     "image": "dd",
  //     "text": "Verify Number"
  //   },
  //
  //
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25.h,),  //na dileo hobe
            Container(
              height: 130.h,
              color: Color(0xff0B5F84),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 50.r,
                      backgroundColor: Color(0xffF38D8B),
                      child: CircleAvatar(
                        radius: 46.r,
                        backgroundImage: AssetImage("images/image/smp.png") ,
                      ),
                    ),
                    SizedBox(width: 10.h,),
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Adhora Islam",style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.w500,color: Color(0xffFFFFFF)),),
                        Row(
                          children: [
                            Text("ID No.4511015",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500,color: Colors.white),),
                         SizedBox(width: 6.w,),
                            Icon(Icons.copy, size: 20.r,color: Colors.white,)
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                        Get.to(()=>RoomProDetails());
                      },
                        child: Image.asset("images/icons/round_arrow.png",width: 30.w,height: 30.w,))
        
                  ],
                ),
              ),
        
            ),
            SizedBox(height: 15.h,),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("550",style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.w500,color: Color(0xff2B2B2B)),)
                    ,SizedBox(height: 5.h,),
                      Text("Friends",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),
                    ],
                  ),
                  Column(
                    children: [
                      Text("110",style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.w500,color: Color(0xff2B2B2B)),)
                      ,SizedBox(height: 5.h,),
                      Text("Followers",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),
                    ],
                  ),
                  Column(
                    children: [
                      Text("78",style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.w500,color: Color(0xff2B2B2B)),)
                      ,SizedBox(height: 5.h,),
                      Text("Following",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               buttonItems("store", "Store",(){

               }),
                buttonItems("nobel", "Noble",(){
                  Get.to(()=>MyNobel());
                }),
                buttonItems("yellowD", "SVIP",(){
                  Get.to(()=>Svip());

                }),
              ],
            ),
            SizedBox(height: 10.h,),
            listItems("rc", "Recharge Coin", (){
              Get.to(()=>RechargeCoin());
            }),
            listItems("ir", "Income Record", (){
             Get.to(()=>IncomeRecord());
            }),
            listItems("bdge", "Badge", (){
            Get.to(()=>MyBadge());
            }),
            listItems("mall", "Mall", (){
             Get.to(()=>Mall());
            }),
            listItems("friend", "Friendship", (){
             // Get.to(()=>RechargeCoin());
            }),
            listItems("hc", "Host Centre", (){
              Get.to(()=>HostReq());
            }),
            listItems("agency", "Agency", (){
              Get.to(()=>Agency());
            }),
            listItems("tu", "Top-up", (){
              Get.to(()=>TopUp());
            }),
            listItems("vn", "Verify Number", (){
            //  Get.to(()=>RechargeCoin());
            }),
        
        
        
          ],
        ),
      ),
    );
  }
  Widget buttonItems(String image, text, VoidCallback onTap){
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        height: 63.h,
        width: 120.w,
        decoration: BoxDecoration(
            color: Color(0xff2DD0BB),
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
                color: Color(0xff2B2B2B),
                width: 2
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/icons/$image.png",width: 30.w,height: 30.w,),
            SizedBox(width: 10.w,),
            Text(text,style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),)
          ],
        ),
      ),
    );
  }

  Widget listItems(String image, text, VoidCallback OnTap){
    return ListTile(
      onTap: OnTap,

      leading: CircleAvatar(
        radius: 15.r,
        backgroundImage: AssetImage("images/icons/$image.png"),


      ),
      title: Text( text,style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),
      trailing: Icon(Icons.arrow_forward_ios,color: Color(0xff2DD0BB),size: 25.r,),
      shape: UnderlineInputBorder(
          borderSide: BorderSide(
            color:  Color(0xff808080).withOpacity(.3),
          )
      ),

    );
  }


}
