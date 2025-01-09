import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kitti/widgets/circular_image.dart';
import 'package:kitti/widgets/custom_button_one.dart';
import 'package:kitti/widgets/custom_icon_btn.dart';
import 'package:kitti/widgets/custom_text.dart';

import '../util/colors.dart';

class JoinGroupGroupSpace extends StatefulWidget {
  const JoinGroupGroupSpace({super.key});

  @override
  State<JoinGroupGroupSpace> createState() => _JoinGroupGroupSpaceState();
}

class _JoinGroupGroupSpaceState extends State<JoinGroupGroupSpace> {


  List<Widget> postList = [
    PostsWidget(),
    MyPostsWidget()
  ];
  int index=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new)),
        title: CustomText(
          title: "Group Space",
          fontWeight: FontWeight.w400,
          fontSize: 18.sp,
          textColor: Colors.black,
        ),
        actions: [
          Image.asset(
            "assets/icons/bell.png",
            width: 20.w,
            height: 20.h,
          ),
          SizedBox(
            width: 10.w,
          ),
          Image.asset(
            "assets/icons/plus.png",
            width: 20.w,
            height: 20.h,
          ),
          SizedBox(
            width: 5.w,
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              CustomIconBtn(
                onTab: () {},
                title: "Best Friend",
                width: 190.w,
                textColor: Colors.black,
                fontSize: 15.sp,
                imgColor: AppColors.goldColor,
                img: "assets/icons/store.png",
              ),
              CustomIconBtn(
                onTab: () {},
                title: "😃",
                width: 190.w,
                imgColor: AppColors.goldColor,
                fontSize: 15.sp,
                img: "assets/icons/store.png",
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 170.w,
              height: 40.h,
              padding: EdgeInsets.only(left: 10.w),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/plus.png",
                    width: 20.w,
                    height: 15.h,
                    fit: BoxFit.fitWidth,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText(
                    title: "New tags",
                    fontWeight: FontWeight.w400,
                    textColor: Colors.black,
                    fontSize: 15.sp,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
         postList[index],
        ],
      ),

bottomNavigationBar: Container(
  height: 60.h,

  decoration: BoxDecoration(
    color: AppColors.btnColor,
    borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r), topRight:  Radius.circular(10.r),


    )
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      InkWell (
        onTap: (){
          setState(() {
            index=0;
            print("page $index");
          });
        },
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/posts.png"),
        SizedBox(height: 5.h,),
        CustomText(
        title: "Posts",
        fontWeight: FontWeight.w400,
        fontSize: 18.sp,
        textColor: Colors.white,
        ),
            ],

          ),
        ),
      ),
      InkWell(
        onTap: (){
    setState(() {
    index=1;
    print("page $index");
    });
    },

        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/myposts.png"),
              SizedBox(height: 5.h,),
              CustomText(
                title: "My Posts",
                fontWeight: FontWeight.w400,
                fontSize: 18.sp,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      )
    ],
  ),
),
    ),
    );
  }
}

class PostsWidget extends StatelessWidget {
  List<Map<String,dynamic>> userList =[
    {
      "img":"assets/u22.png"
    },
    {
      "img":"assets/u23.png"
    },
    {
      "img":"assets/u24.png"
    },
    {
      "img":"assets/u25.png"
    },
  ];


  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.builder(
          itemCount: 2,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding:  EdgeInsets.symmetric(vertical: 5.h),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircularImage(
                          size: 50.h,
                          img: "assets/couple.png",
                        ),
                        Icon(
                          Icons.person,
                          color: AppColors.goldColor,
                          size: 17.h,
                        ),
                        CustomText(
                          title: "꧁👫DOSTI💖DIL💖SE💖DIL...",
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          textColor: Colors.black,
                        ),


                        PopupMenuButton<String>(
                          color:Colors.white,
                          icon: Icon(Icons.more_horiz, size: 20.h, color:Colors.black,),
                          onSelected: (value) {

                            if (value == 'Follow') {
                              print('Follow ');
                            } else if (value == 'Add Friend') {
                              print('Add Friend ');
                            }
                          },
                          itemBuilder: (BuildContext context) {
                            return [
                              PopupMenuItem(
                                value: 'Follow',
                                child: Text('Follow'),
                              ),
                              PopupMenuItem(
                                value: 'Add Friend',
                                child: Text('Add Friend'),
                              ),
                            ];
                          },
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 170.w,
                      height: 22.h,
                      padding: EdgeInsets.only(left: 10.w),
                      child: Row(
                        children: [
                          CustomText(
                            title: "From",
                            fontWeight: FontWeight.w400,
                            textColor: Colors.black,
                            fontSize: 14.sp,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            title: "Owner",
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.blueColor,
                            fontSize: 14.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    width: 390.w,
                    height: 250.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/bg2.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Row(
                        // mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularImage(
                                img: 'assets/u20.png',
                                size: 120.h,
                              ),
                              SizedBox(height: 10.h),
                              CustomText(
                                title: "💕গল্পটা তোমার...",
                                fontSize: 20.sp,
                                textColor: Colors.white,
                              )
                            ],
                          ),
                          SizedBox(width: 20.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularImage(
                                img: 'assets/u21.png',
                                size: 120.h,
                              ),
                              SizedBox(height: 10.h),
                              CustomText(
                                title: "💕গল্পটা তোমার...",
                                fontSize: 20.sp,
                                textColor: Colors.white,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 170.w,
                      height: 22.h,
                      padding: EdgeInsets.only(left: 10.w),
                      child: Row(
                        children: [
                          CustomText(
                            title: "2024/02/08",
                            fontWeight: FontWeight.w400,
                            textColor: Colors.grey,
                            fontSize: 14.sp,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            title: "604 views",
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            textColor: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Container(
                    width: 390.w,
                    height: 22.h,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100.w,
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 17.h,
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              CustomText(
                                title: "9",
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp,
                                textColor: Colors.black,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icons/comment.png",
                                    height: 15.h,
                                  )),
                              SizedBox(
                                width: 5.w,
                              ),
                              CustomText(
                                title: "10",
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp,
                                textColor: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // width: 100.w,
                          child: InkWell(
                              onTap: () {},
                              child: Image.asset(
                                "assets/icons/share.png",
                                height: 15.h,
                              )),
                        )
                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(

                      height: 22.h,
                      padding: EdgeInsets.only(left: 10.w),
                      child: Row(
                        children: [
                          CustomText(
                            title: "Unmute plz:",
                            fontWeight: FontWeight.w500,
                            textColor: Colors.black,
                            fontSize: 14.sp,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            title: "unmute plz",
                            fontWeight: FontWeight.w400,
                            textColor: Colors.black,
                            fontSize: 15.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                  //   SizedBox(height: 5.h,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(

                      height: 22.h,
                      padding: EdgeInsets.only(left: 10.w),
                      child: Row(
                        children: [
                          CustomText(
                            title: "Lakhbeer Singh:",
                            fontWeight: FontWeight.w500,
                            textColor: Colors.black,
                            fontSize: 14.sp,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            title: "Hi",
                            fontWeight: FontWeight.w400,
                            textColor: Colors.black,
                            fontSize: 15.sp,
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    height:  45.h,
                    alignment:Alignment.centerLeft,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal:  5.w),
                        itemCount:userList.length,
                        itemBuilder:(context,index){
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: CircularImage(
                              size: 40.h,
                              img: "${userList[index]['img']}",
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: 5.h,),
                  Container(

                    height: 22.h,
                    padding: EdgeInsets.only(left: 10.w),
                    child: Row(

                      children: [
                        CustomText(
                          title: "10 comments",
                          fontWeight: FontWeight.w400,
                          textColor: Colors.black,
                          fontSize: 14.sp,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Icon(Icons.arrow_forward_ios, size: 15.h, )
                      ],
                    ),),

                ],
              ),
            );
          }),
    );
  }
}

class MyPostsWidget extends StatelessWidget {
  List<Map<String,dynamic>> userList =[
    {
      "img":"assets/u22.png"
    },
    {
      "img":"assets/u23.png"
    },
    {
      "img":"assets/u24.png"
    },
    {
      "img":"assets/u25.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.builder(
          itemCount: 2,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding:  EdgeInsets.symmetric(vertical: 5.h),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircularImage(
                          size: 50.h,
                          img: "assets/couple.png",
                        ),
                        Icon(
                          Icons.person,
                          color: AppColors.goldColor,
                          size: 17.h,
                        ),
                        CustomText(
                          title: "꧁👫DOSTI💖DIL💖SE💖DIL...",
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          textColor: Colors.black,
                        ),


                        PopupMenuButton<String>(
                          color:Colors.white,
                          icon: Icon(Icons.more_horiz, size: 20.h, color:Colors.black,),
                          onSelected: (value) {

                            if (value == 'edit') {
                              print('Edit ');
                            } else if (value == 'delete') {
                              print('Delete ');
                            }
                          },
                          itemBuilder: (BuildContext context) {
                            return [
                              PopupMenuItem(
                                value: 'edit',
                                child: Text('Edit'),
                              ),
                              PopupMenuItem(
                                value: 'delete',
                                child: Text('Delete'),
                              ),
                            ];
                          },
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 170.w,
                      height: 22.h,
                      padding: EdgeInsets.only(left: 10.w),
                      child: Row(
                        children: [
                          CustomText(
                            title: "From",
                            fontWeight: FontWeight.w400,
                            textColor: Colors.black,
                            fontSize: 14.sp,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            title: "Owner",
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.blueColor,
                            fontSize: 14.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    width: 390.w,
                    height: 250.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/bg2.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Row(
                        // mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularImage(
                                img: 'assets/u20.png',
                                size: 120.h,
                              ),
                              SizedBox(height: 10.h),
                              CustomText(
                                title: "💕গল্পটা তোমার...",
                                fontSize: 20.sp,
                                textColor: Colors.white,
                              )
                            ],
                          ),
                          SizedBox(width: 20.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularImage(
                                img: 'assets/u21.png',
                                size: 120.h,
                              ),
                              SizedBox(height: 10.h),
                              CustomText(
                                title: "💕গল্পটা তোমার...",
                                fontSize: 20.sp,
                                textColor: Colors.white,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 170.w,
                      height: 22.h,
                      padding: EdgeInsets.only(left: 10.w),
                      child: Row(
                        children: [
                          CustomText(
                            title: "2024/02/08",
                            fontWeight: FontWeight.w400,
                            textColor: Colors.grey,
                            fontSize: 14.sp,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            title: "604 views",
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            textColor: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Container(
                    width: 390.w,
                    height: 22.h,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100.w,
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 17.h,
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              CustomText(
                                title: "9",
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp,
                                textColor: Colors.black,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/icons/comment.png",
                                    height: 15.h,
                                  )),
                              SizedBox(
                                width: 5.w,
                              ),
                              CustomText(
                                title: "10",
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp,
                                textColor: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // width: 100.w,
                          child: InkWell(
                              onTap: () {},
                              child: Image.asset(
                                "assets/icons/share.png",
                                height: 15.h,
                              )),
                        )
                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(

                      height: 22.h,
                      padding: EdgeInsets.only(left: 10.w),
                      child: Row(
                        children: [
                          CustomText(
                            title: "Unmute plz:",
                            fontWeight: FontWeight.w500,
                            textColor: Colors.black,
                            fontSize: 14.sp,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            title: "unmute plz",
                            fontWeight: FontWeight.w400,
                            textColor: Colors.black,
                            fontSize: 15.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                  //   SizedBox(height: 5.h,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(

                      height: 22.h,
                      padding: EdgeInsets.only(left: 10.w),
                      child: Row(
                        children: [
                          CustomText(
                            title: "Lakhbeer Singh:",
                            fontWeight: FontWeight.w500,
                            textColor: Colors.black,
                            fontSize: 14.sp,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            title: "Hi",
                            fontWeight: FontWeight.w400,
                            textColor: Colors.black,
                            fontSize: 15.sp,
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    height:  45.h,
                    alignment:Alignment.centerLeft,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal:  5.w),
                        itemCount:userList.length,
                        itemBuilder:(context,index){
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: CircularImage(
                              size: 40.h,
                              img: "${userList[index]['img']}",
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: 5.h,),
                  Container(

                    height: 22.h,
                    padding: EdgeInsets.only(left: 10.w),
                    child: Row(

                      children: [
                        CustomText(
                          title: "10 comments",
                          fontWeight: FontWeight.w400,
                          textColor: Colors.black,
                          fontSize: 14.sp,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Icon(Icons.arrow_forward_ios, size: 15.h, )
                      ],
                    ),),

                ],
              ),
            );
          }),
    );
  }
}