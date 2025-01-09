import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kitti/util/colors.dart';
import 'package:kitti/widgets/custom_button_one.dart';
import 'package:kitti/widgets/custom_icon_btn.dart';

import '../widgets/circular_image.dart';
import '../widgets/custom_text.dart';
import '../widgets/large_icon_btn.dart';

class ChatPageInfo extends StatefulWidget {
  const ChatPageInfo({super.key});

  @override
  State<ChatPageInfo> createState() => _ChatPageInfoState();
}

class _ChatPageInfoState extends State<ChatPageInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          "assets/icons/back.png",
          height: 20.h,
          width: 20.w,
        ),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right:5.w),
            child: Image.asset(
              "assets/icons/share.png",
              height: 20.h,
              width: 20.w,
            ),
          )
        ],
        title: Padding(
          padding: EdgeInsets.only(top: 2.h),
          child: Row(
            children: [
              Image.asset(
                "assets/userjoin.png",
                height: 50.h,
                width: 50.w,
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    title: "꧁👫DOSTI💖TAK👫꧂",
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    textColor: Colors.black,
                  ),
                  CustomText(
                    title: "Members: 19.5k",
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    textColor: Colors.black,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 15.h,),
            Container(
              width: 177.w,
              height: 30.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Voice Club: 5415415",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xff899397),
                        fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/icons/copy.png",
                        width: 15.w,
                        height: 15.h,
                      ))
                ],
              ),
            ),
            SizedBox(height: 15.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconBtn(
                  onTab: () {},
                  title: "Dhaka",
                  btnColor: Color(0xffF9FAF2),
                  height: 28.h,
                  width: 76.w,
                  radius: 5.r,
                  imgHeight: 15.h,
                  imgWidth: 15.w,
                  img: "assets/icons/marker2.png",
                  imgColor: Colors.green,
                ),
                CustomButtonOne(
                  onTab: () {},
                  title: "Voiceroom",
                  fontSize: 14.sp,
                  width: 85.w,
                  height: 28.h,
                  radius: 5.r,
                  textColor: Colors.black,
                  color: Color(0xffE4E5E7),
                  fontWeight: FontWeight.w400,
                ),
                CustomButtonOne(
                  onTab: () {},
                  title: "English",
                  fontSize: 14.sp,
                  radius: 5.r,
                  width: 85.w,
                  height: 28.h,
                  textColor: Colors.black,
                  color: Color(0xffE4E5E7),
                  fontWeight: FontWeight.w400,
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                  title: "Voice Club Room",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            ListTile(
              minTileHeight: 66.h,
              tileColor: AppColors.lightBlue,
              leading: Image.asset("assets/userjoin.png"),
              title: CustomText(
                title: "꧁👫DOSTI💖TAK👫꧂",
                textColor: Colors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ),
            SizedBox(height: 15.h,),
            Container(
              height: 48.h,
              width: 390.w,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      title: "Mute",
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      textColor: Colors.black
                  ),

                  Container(
                    child: CustomText(
                        title: "4.2k+",
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        textColor: Colors.black
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 210.h,
              padding: EdgeInsets.all(8.w),
              color: AppColors.lightBlue,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 300.w,
                      height: 30.h,
                      margin: EdgeInsets.symmetric(vertical: 5.h),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/icons/user_icon.png",
                            width: 15.w,
                            height: 15.h,
                            fit: BoxFit.fill,
                            color: Color(0xffF9A305),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CircularImage(
                            size: 30.h,
                            img: "assets/u3.png",
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Group Owner",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Color(0xff020202),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    );
                  }),
            ),


            SizedBox(height: 15.h,),
            Container(
              height: 48.h,
              width: 390.w,
              color: AppColors.lightBlue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    title: "Mute",
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    textColor: Colors.black
                  ),

                  Container(
                    child: Switch(value: true, onChanged:(value){

                    }),
                  )
                ],
              ),
            ),

            SizedBox(height: 10.h,),
            InkWell(
              onTap: () {
                _showLeaveGroupDialog(context);
              },
              child: Container(
                height: 48.h,
                width: 390.w,
                color: AppColors.lightBlue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      title: "Leave",
                      fontWeight: FontWeight.w400,
                      fontSize: 18.sp,
                      textColor: Color(0xffEA2831),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    ));


  }


  void _showLeaveGroupDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: SizedBox(
            width: 390, // Fixed width
            height: 220, // Fixed height
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Center(
                child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(  height: 50.h, ),
                        CustomText(
                          title: "Are you sure leave this group?",
                          textColor: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(height: 8),
                        CustomText(
                          title: "Your message will be deleted.",
                          textColor: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
              ),

                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Close the dialog
                      },
                      child:
                      CustomText(
                        title: "Cancel",
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        textColor: Colors.black
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle the leave group logic here
                        Navigator.of(context).pop(); // Close the dialog
                      },

                      child:   CustomText(
                        title: "Leave",
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        textColor: Color(0xffEA2831),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
  }

}
