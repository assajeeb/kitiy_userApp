import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitiy_userapp/pages/general_profile/notification.dart';
import 'package:kitiy_userapp/pages/general_profile/password_change.dart';
import 'package:kitiy_userapp/pages/general_profile/security_pri.dart';
import 'package:kitiy_userapp/pages/general_profile/term_condi.dart';

import '../friend/frds_tab.dart';
import 'about_us.dart';
import 'block.dart';
import 'daily_user.dart';
import 'game_center.dart';
import 'helping.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              SizedBox(height: 45.w,),
              SizedBox(
                height: 260.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // eta hobe na(friend list & request)
                    CircleAvatar(
                      radius: 50.r,
                      backgroundImage: AssetImage("images/image/smp.png"),
                    ),
                    SizedBox(height: 15.w,),
                    Text("Md Habib",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("ID No.4511015",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Color(0xff0B5F84)),),

                    SizedBox(width: 5.w,),
                     Icon(Icons.copy,color: Colors.black,size: 15.r,)
                   ],
                 ),
                    SizedBox(height: 5.w,),

              Text("Email: example@gmail.com",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),),

                      ],
                ),
              ),

              Divider(height: 5,color: Color(0xff808080).withOpacity(.4),thickness: 2.8,),
              profileItems("kity", "Kitti Daily Task ",() {

                Get.to(()=>DailyUser());

              },),
              profileItems("game", "Game Center",() {
                Get.to(()=>GameCenter());

              },),
              profileItems("rank", "Rank",() {

              },),
              profileItems("web", "Language",() {

              },),
              profileItems("feed", "Feed",() {

              },),
              profileItems("seq", "Security & Privacy",() {
                Get.to(()=>SecurityPri());

              },),
              profileItems("block", "Block List",() {

                Get.to(()=>Block());
              },),
              profileItems("lock", "Password Change",() {

                Get.to(()=>PasswordChange());
              },),
              profileItems("term", "Terms & Conditions",() {

                Get.to(()=>TermCondi());
              },),
              profileItems("noti", "Notification",() {

                Get.to(()=>Notifications());

              },),
              profileItems("share", "Share",() {

              },),
              profileItems("help", "Help",() {


                Get.to(()=>Helping());
              },),
              profileItems("about", "About Us",() {
                Get.to(()=>AboutUs());
              },),
              SizedBox(height: 10.h,),
              SizedBox(
                width: double.infinity,
                height: 48.h,
                child: ElevatedButton(
                    onPressed: (){},
                    child: Text("Log Out",style: TextStyle(color:Color(0xff0B5F84) ),),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xff0B5F84)
                    ),
                    borderRadius: BorderRadius.circular(25.r)
                  ))

                ),
                ),
              ),
              SizedBox(height: 10.h,),
              SizedBox(
                width: double.infinity,
                height: 48.h,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Delete Account",style: TextStyle(color:Colors.white),),
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color(0xff0B5F84) ),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          side: BorderSide(
                              color: Color(0xff0B5F84)
                          ),
                          borderRadius: BorderRadius.circular(25.r)
                      ))

                  ),
                ),
              ),
              SizedBox(height: 20.h,),




            ],
          ),
        ),
      ),
    );
  }
  Widget profileItems(String image, text, VoidCallback onTap){
    return  ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
      leading:   Image.asset("images/icons/$image.png",width: 25.w,height: 25.w,),
        trailing:  Icon(Icons.arrow_forward_ios_rounded,size: 20.r,color: Color(0xff808080),),
      title: Text("$text",style: TextStyle(fontSize: 15.sp,color: Color(0xff484545),fontWeight: FontWeight.w400),),
      shape: UnderlineInputBorder(
        borderSide: BorderSide(
          color:  Color(0xff808080).withOpacity(.4),
        )
      ),

    );
  }
}
