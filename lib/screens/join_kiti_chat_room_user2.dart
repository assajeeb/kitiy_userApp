import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitti/screens/create_page.dart';
import 'package:kitti/screens/roomManagement/create_room_page.dart';
import 'package:kitti/util/colors.dart';
import 'package:kitti/widgets/circular_image.dart';
import 'package:kitti/widgets/custom_button_one.dart';

import '../widgets/custom_text.dart';
import 'chat_screen/chat_room_gift_dialog.dart';
import 'chat_screen/pk_our_f.dart';
import 'join_group_tootls.dart';

class JoinKitiChatRoomUser2 extends StatefulWidget {
  const JoinKitiChatRoomUser2({super.key});

  @override
  State<JoinKitiChatRoomUser2> createState() => _JoinKitiChatRoomUser2State();
}

class _JoinKitiChatRoomUser2State extends State<JoinKitiChatRoomUser2> {
  List<Map<String, dynamic>> userList = [
    {
      "img": "assets/u1.png",
    },
    {
      "img": "assets/u2.png",
    },
    {
      "img": "assets/u3.png",
    },
    {
      "img": "assets/u4.png",
    },
    {
      "img": "assets/u5.png",
    },
  ];

  List<Map<String, dynamic>> groupUserList = [
    {
      "img": "assets/u1.png",
    },
    {
      "img": "assets/u2.png",
    },
    {
      "img": "assets/u3.png",
    },
    {
      "img": "assets/u4.png",
    },
    {
      "img": "assets/u5.png",
    },
    {
      "img": "assets/u7.png",
    },
    {
      "img": "assets/u8.png",
    },
    {
      "img": "assets/u9.png",
    },
    {
      "img": "assets/u10.png",
    },
    {
      "img": "assets/u11.png",
    },
  ];
  List<Map<String, dynamic>> wishList = [
    {
      "name": "Kayan 😍",
      "img": "assets/u12.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    userList.shuffle();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/bg.png"),
                          fit: BoxFit.fill)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        width: 390.w,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                          Color(0xff041E43),
                          Color(0xff0D111C),
                        ])),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(JoinGroupTools());
                              },
                              child: Container(
                                width: 170.w,
                                height: 55.h,
                                decoration: BoxDecoration(
                                    color: Color(0xff3D4456),
                                    borderRadius: BorderRadius.circular(10.r)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 25.w,
                                      height: 25.h,
                                      child: Image.asset("assets/user11.png"),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            "꧁DOSTI💖TAK꧂",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "ID: 1215411",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Color(0xff9198AA)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _showOnlinePeople(context);
                              },
                              child: Container(
                                width: 68.w,
                                height: 20.h,
                                decoration: BoxDecoration(
                                    color: Color(0xff3D4456),
                                    borderRadius: BorderRadius.circular(16.r)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 15.w,
                                      height: 15.h,
                                      child: Image.asset(
                                        "assets/icons/user_icon.png",
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Container(
                                      child: Text(
                                        "25",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(CreateRoomPage());
                              },
                              child: Container(
                                  width: 80.w,
                                  height: 20.h,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.h),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Image.asset(
                                          "assets/icons/dot1.png",
                                          color: Colors.white,
                                          width: 7.w,
                                          height: 7.h,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Image.asset(
                                          "assets/icons/dot1.png",
                                          color: Colors.white,
                                          width: 9.w,
                                          height: 9.h,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Image.asset(
                                          "assets/icons/dot1.png",
                                          color: Colors.white,
                                          width: 7.w,
                                          height: 7.h,
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                            Container(
                              width: 20.w,
                              height: 20.h,
                              child: Image.asset(
                                "assets/icons/poweroff.png",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            margin: EdgeInsets.only(left: 10.w),
                            width: 169.w,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                              Color(0xff041E43),
                              Color(0xff0D111C),
                            ])),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 68.w,
                                  height: 20.h,
                                  decoration: BoxDecoration(
                                      color: Color(0xff3D4456),
                                      borderRadius:
                                          BorderRadius.circular(16.r)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 15.w,
                                        height: 15.h,
                                        child: Image.asset(
                                            "assets/icons/dimond.png"),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Container(
                                        child: Text(
                                          "451",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Color(0xff9198AA)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 94.w,
                                  height: 20.h,
                                  decoration: BoxDecoration(
                                      color: Color(0xff3D4456),
                                      borderRadius:
                                          BorderRadius.circular(16.r)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 15.w,
                                        height: 15.h,
                                        child: Image.asset(
                                            "assets/icons/record.png"),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Container(
                                        child: Text(
                                          "451",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Color(0xff9198AA)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                          width: double.infinity.w,
                          padding: EdgeInsets.only(right: 15.w),
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 40.w,
                                height: 39.h,
                                padding: EdgeInsets.all(5.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30.r),
                                        bottomLeft: Radius.circular(30.r)),
                                    gradient: LinearGradient(colors: [
                                      Color(0xffEE7F14),
                                      Color(0xffFBA106)
                                    ])),
                                child: Image.asset(
                                  "assets/u1.png",
                                  width: 28.w,
                                  height: 28.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Container(
                                width: 148.w,
                                height: 39.h,
                                padding: EdgeInsets.all(5.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(30.r),
                                        bottomRight: Radius.circular(30.r)),
                                    gradient: LinearGradient(colors: [
                                      Color(0xff71391D),
                                      Color(0xff8E623A),
                                      Color(0xff745A42),
                                      Color(0xff5D524C)
                                    ])),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "assets/car.png",
                                      width: 35.w,
                                      height: 35.h,
                                      fit: BoxFit.cover,
                                    ),
                                    Container(
                                      child: Text(
                                        "X",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "10",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/u1.png",
                                      width: 25.w,
                                      height: 25.h,
                                      fit: BoxFit.cover,
                                    ),
                                    Container(
                                      child: Text(
                                        "60s",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 50.w,
                            width: 170.w,
                            alignment: Alignment.centerRight,
                            child: ListView.builder(
                                itemCount: userList.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return ClipRRect(
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Image.asset(
                                        "${userList[index]['img']}",
                                        height: 30.h,
                                        width: 30.w,
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ],
                  )),
              Stack(
                children: [
                  Container(
                    height: 277.h,
                    color: Colors.black45,
                    child: Image.asset(
                      "assets/bg3.png",
                      height: 150.h,
                      width: 420.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    left: 5.w,
                    right: 5.w,
                    top: 20.h,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                        itemCount: groupUserList.length,
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                              height: 70.h,
                              child: Column(
                                children: [
                                  Container(
                                    child: Image.asset(
                                      "${groupUserList[index]['img']}",
                                      height: 50.h,
                                      width: 50.w,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    width: 40.w,
                                    child: Text(
                                      "2",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ));
                        }),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              // Container(
              //   margin: EdgeInsets.only(left: 15.w),
              //   alignment: Alignment.centerLeft,
              //   child: Text(
              //     "Waiting List",
              //     style: TextStyle(
              //         fontSize: 18.sp,
              //         fontWeight: FontWeight.w400,
              //         color: Colors.black),
              //     textAlign: TextAlign.center,
              //   ),
              // ),
              // Container(
              //   height: 200.h,
              //   alignment: Alignment.centerLeft,
              //   child: ListView.builder(
              //       itemCount: wishList.length,
              //       itemBuilder: (context, index) {
              //         return ClipRRect(
              //           child: ListTile(
              //             leading: Image.asset(
              //               "${wishList[index]['img']}",
              //               height: 30.h,
              //               width: 30.w,
              //             ),
              //             title: Text(
              //               "${wishList[index]['name']}",
              //             ),
              //           ),
              //         );
              //       }),
              // ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(left: 5.w, right: 5.w, bottom: 10.h),
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  _showWaitingList(context);
                },
                child: Image.asset(
                  "assets/icons/waitinglist.png",
                  width: 25.w,
                  height: 20.h,
                  color: Colors.white,
                ),
              ),
              Image.asset("assets/icons/smile.png"),
              Image.asset(
                "assets/navicon/messenger.png",
                width: 25.w,
                height: 25.h,
                color: Colors.white,
              ),
              GestureDetector(
                onTap: () {
                  showCustomBottomSheet(context);
                },
                child: Image.asset(
                  "assets/icons/record.png",
                  width: 25.w,
                  height: 25.h,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    // PkMode.pkOurF(context);
                  },
                  child: Image.asset(
                    "assets/navicon/mic.png",
                    width: 25.w,
                    height: 25.h,
                    color: Colors.white,
                  )),
              Image.asset(
                "assets/navicon/volume.png",
                width: 25.w,
                height: 25.h,
                color: Colors.white,
              ),
              InkWell(
                  onTap: () {
                    showPackage(context);
                  },
                  child: Image.asset(
                    "assets/navicon/package.png",
                    width: 25.w,
                    height: 25.h,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
        floatingActionButton: Container(
            height: 120.h,
            child: Column(
              children: [
                Container(
                  height: 50.h,
                  width: 50.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Color(0xffFF744D)),
                  child: CustomText(
                    title: "Event",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                InkWell(
                  onTap: () {
                    _interactiveGame(context);
                  },
                  child: Image.asset(
                    "assets/icons/box.png",
                    width: 50.w,
                    height: 54.h,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Future<dynamic> showPackage(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              alignment: Alignment.center,
              width: 400.w,
              height: 260.h,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, mainAxisExtent: 90.w),
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  PackageItem(
                    title: "Lock",
                    image: "assets/chatroom/lock.png",
                    onTab: () {
                      Navigator.pop(context);
                      _chatLock(context);
                    },
                    color1: Color(0xff06D3CF),
                    color2: Color(0xff28F79E),
                  ),
                  PackageItem(
                    onTab: () {
                      Navigator.pop(context);
                      _chatLock(context);
                    },
                    color1: Color(0xffF42092),
                    color2: Color(0xffFD7656),
                    title: "Clean Chat",
                    image: "assets/chatroom/cleanchat.png",
                  ),
                  PackageItem(
                    onTab: () {
                      Navigator.pop(context);
                      _chatLock(context);
                    },
                    title: "Chat Lock",
                    image: "assets/chatroom/chatlock.png",
                    color1: Color(0xff44B1F7),
                    color2: Color(0xff0BBBFB),
                  ),
                  PackageItem(
                    onTab: () {
                      Navigator.pop(context);
                      _chatLock(context);
                    },
                    color1: Color(0xff2390F8),
                    color2: Color(0xffC916FD),
                    title: "Theme",
                    image: "assets/chatroom/theme.png",
                  ),
                  PackageItem(
                    onTab: () {
                      Navigator.pop(context);
                      _chatLock(context);
                    },
                    color1: Color(0xff1AA1F7),
                    color2: Color(0xff0ABEFE),
                    title: "Effect",
                    image: "assets/chatroom/eeffect.png",
                  ),
                  PackageItem(
                    onTab: () {
                      Navigator.pop(context);
                      _pkMode(context);
                    },
                    color1: Color(0xffE52A77),
                    color2: Color(0xff3107EE),
                    title: "Room PK",
                    image: "assets/chatroom/roompk.png",
                  ),
                  PackageItem(
                    onTab: () {
                      Navigator.pop(context);

                      _micMode(context);
                    },
                    title: "Mic Mode",
                    image: "assets/chatroom/micmode.png",
                    color1: Color(0xff5E6FF5),
                    color2: Color(0xff9B33D4),
                  ),
                  PackageItem(
                    onTab: () {
                      Navigator.pop(context);
                      _chatLock(context);
                    },
                    color1: Color(0xff3782F9),
                    color2: Color(0xff44CFFE),
                    title: "Music",
                    image: "assets/chatroom/music.png",
                  ),
                  PackageItem(
                    onTab: () {
                      Navigator.pop(context);
                      _chatLock(context);
                    },
                    color1: Color(0xffDF1C20),
                    color2: Color(0xff1D0FAD),
                    title: "Team Battle",
                    image: "assets/chatroom/teambattle.png",
                  ),
                  PackageItem(
                    onTab: () {
                      Navigator.pop(context);
                      _chatLock(context);
                    },
                    color1: Color(0xff2DF8A6),
                    color2: Color(0xff05CEDE),
                    title: "Admin Record",
                    image: "assets/chatroom/adminrecord.png",
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _chatLock(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
            height: 350.h,
            width: 420.w,
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(
                  height: 15.h,
                ),
                CustomText(
                  title: "Set Password",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  textColor: AppColors.btnColor,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 80.h,
                      width: 80.w,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(40.h),
                          border: OutlineInputBorder(),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 80.h,
                      width: 80.w,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(40.h),
                          border: OutlineInputBorder(),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 80.h,
                      width: 80.w,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(40.h),
                          border: OutlineInputBorder(),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 80.h,
                      width: 80.w,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(40.h),
                          border: OutlineInputBorder(),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomButtonOne(
                  onTab: () {},
                  title: "Set Password",
                  color: AppColors.btnColor,
                  textColor: Colors.white,
                ),
              ],
            ));
      },
    );
  }

  void _micMode(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
            height: 550.h,
            width: 420.w,
            child: Column(
              children: [
                Container(
                  width: 420.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: Color(0xff6870EF),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.r),
                          topRight: Radius.circular(15.r))),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    title:
                        "Tips: 1. The premium, seat is only suitable for the 9-mic mode",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    textColor: AppColors.orengeColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    title:
                        "2. Non 9- mic mode does not support silver coin games:",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    textColor: AppColors.orengeColor,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 390.w,
                  height: 200.h,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 5.w,
                        mainAxisSpacing: 5.h),
                    children: [
                      Container(
                        width: 130,
                        height: 125.h,
                        child: Stack(
                          children: [
                            // Background image
                            Positioned.fill(
                              child: Image.asset(
                                'assets/mic_mode.png', // Replace with your image path
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Grid of buttons
                            Container(
                              height: 130,
                              alignment: Alignment.center,
                              child: GridView.builder(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5,
                                ),
                                itemCount: 2,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      // Handle button tap
                                      print("Button $index tapped");
                                    },
                                    child: CircleAvatar(
                                      radius: 20.r,
                                      backgroundColor:
                                          Colors.white.withOpacity(0.8),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 25.w,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 125.h,
                        child: Stack(
                          children: [
                            // Background image
                            Positioned.fill(
                              child: Image.asset(
                                'assets/mic_mode.png', // Replace with your image path
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Grid of buttons
                            Container(
                              height: 130,
                              child: GridView.builder(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5,
                                ),
                                itemCount: 9,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      // Handle button tap
                                      print("Button $index tapped");
                                    },
                                    child: CircleAvatar(
                                      radius: 20.r,
                                      backgroundColor:
                                          Colors.white.withOpacity(0.8),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 25.w,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 125.h,
                        child: Stack(
                          children: [
                            // Background image
                            Positioned.fill(
                              child: Image.asset(
                                'assets/mic_mode.png', // Replace with your image path
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Grid of buttons
                            Container(
                              height: 130,
                              child: GridView.builder(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5,
                                ),
                                itemCount: 9,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      // Handle button tap
                                      print("Button $index tapped");
                                    },
                                    child: CircleAvatar(
                                      radius: 20.r,
                                      backgroundColor:
                                          Colors.white.withOpacity(0.8),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 25.w,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ));
      },
    );
  }
}

class PackageItem extends StatelessWidget {
  final title;
  final image;
  final color1;
  final color2;
  VoidCallback onTab;
  PackageItem(
      {super.key,
      this.title,
      this.image,
      this.color1,
      this.color2,
      required this.onTab});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
          child: Column(
        children: [
          Container(
            height: 40.h,
            width: 40.w,
            padding: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [color1, color2]),
                shape: BoxShape.circle),
            child: Image.asset(
              "$image",
              width: 15.w,
              height: 15.h,
              fit: BoxFit.contain,
            ),
          ),
          CustomText(
            title: "$title",
            fontWeight: FontWeight.w400,
            fontSize: 11.sp,
            textColor: Colors.black,
            textAlign: TextAlign.center,
          ),
        ],
      )),
    );
  }
}

double _currentValue = 10;
void _pkMode(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        height: 550.h,
        width: 420.w,
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                title: "PK Mode",
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                textColor: Colors.black,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 390, // Adjust as needed
              height: 80, // Adjust as needed
              child: Row(
                children: [
                  // Section A
                  Container(
                    width: 195.w,
                    height: 80,
                    child: Container(
                      color: Colors.purple,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // Circular avatars
                          Align(
                            alignment: Alignment.center,
                            child: Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: List.generate(
                                10,
                                (index) => CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          // P and K
                          Positioned(
                              top: 10,
                              right: 10,
                              child: Image.asset(
                                "assets/chatroom/P.png",
                                height: 25.h,
                                width: 30.w,
                              )),
                          // A Label
                          Positioned(
                              top: 36,
                              right: 10,
                              child: Image.asset(
                                "assets/chatroom/K.png",
                                height: 25.h,
                                width: 30.w,
                              )),
                        ],
                      ),
                    ),
                  ),
                  // Section B
                  Container(
                    width: 145.w,
                    height: 70.h,
                    color: Colors.pink,
                    child: InkWell(
                      onTap: () {
                        _searchRoomID(context);
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            width: 7.w,
                          ),
                          Container(
                            width: 30.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                border:
                                    Border.all(width: 2.r, color: Colors.white),
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 7.w,
                          ),
                          CustomText(
                              title: "Add Room",
                              textColor: Colors.white,
                              fontWeight: FontWeight.w500),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset(
                                  "assets/chatroom/B.png",
                                  height: 25.h,
                                  width: 30.w,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: CustomText(
                  title: "Select PK time",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  textColor: Colors.black45,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Current selected value
                  Text(
                    '${_currentValue.toInt()}min',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Slider with custom markers
                  Column(
                    children: [
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.purple,
                          inactiveTrackColor: Colors.grey,
                          thumbColor: Colors.purple,
                          overlayColor: Colors.purple.withOpacity(0.2),
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 8),
                          trackHeight: 2,
                          tickMarkShape:
                              const RoundSliderTickMarkShape(tickMarkRadius: 4),
                          activeTickMarkColor: Colors.purple,
                          inactiveTickMarkColor: Colors.grey,
                        ),
                        child: Slider(
                          value: _currentValue,
                          min: 10,
                          max: 60,
                          divisions: 5,
                          onChanged: (value) {
                            _currentValue = value;
                            // setState(() {
                            //
                            // });
                          },
                        ),
                      ),
                      // Min and Max labels
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            title: "10min",
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            textColor: Colors.black,
                          ),
                          CustomText(
                            title: "60min",
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            textColor: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 390.w,
                height: 40.h,
                decoration: BoxDecoration(
                    color: Color(0xff650ED5),
                    borderRadius: BorderRadius.circular(5.r)),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

void _searchRoomID(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
          height: 472.h,
          width: 430.w,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomText(
                    title: "Search room ID",
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    color: Colors.grey[300], // Light grey background
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0), // Add padding inside the container
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Room ID",
                        border: InputBorder.none, // Remove the default border
                      ),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  //  _pkOurF(context);
                  _pkMode(context);
                },
                child: Container(
                  width: 390.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: Color(0xff650ED5),
                      borderRadius: BorderRadius.circular(5.r)),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ));
    },
  );
}

void _interactiveGame(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
          width: 390.w,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      title: "Interactive Games",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  CustomText(
                    title:
                        "Room owonerscan receive extra rewards if games with      are unlocked.",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80.w,
                        height: 80.h,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/chatroom/ludo.png",
                              width: 65.w,
                              height: 65.h,
                              fit: BoxFit.contain,
                            ),
                            CustomText(
                              title: "Lodu",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 71.w,
                        height: 80.h,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/chatroom/ludo.png",
                              width: 65.w,
                              height: 65.h,
                              fit: BoxFit.contain,
                            ),
                            CustomText(
                              title: "Fishing",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 80.w,
                        height: 80.h,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/chatroom/domino.png",
                              width: 65.w,
                              height: 65.h,
                              fit: BoxFit.contain,
                            ),
                            CustomText(
                              title: "Domino",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 85.w,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/chatroom/super.png",
                              width: 65.w,
                              height: 65.h,
                              fit: BoxFit.contain,
                            ),
                            CustomText(
                              title: "Super winner",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  title: "Basic Tools",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 100.w,
                  height: 75.h,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color(0xffB26AFE),
                    Color(0xff9D6FFD),
                  ])),
                  child: Image.asset(
                    "assets/chatroom/tas.png",
                    width: 65.w,
                    height: 53.h,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80.w,
                    height: 80.h,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/chatroom/luckybag.png",
                          width: 65.w,
                          height: 65.h,
                          fit: BoxFit.contain,
                        ),
                        CustomText(
                          title: "Lucky Bags",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 71.w,
                    child: Column(
                      children: [
                        Container(
                            width: 56.w,
                            height: 56.h,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color(0xff879EC0),
                                  Color(0xff677697)
                                ]),
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.settings,
                              color: Colors.white,
                            )),
                        CustomText(
                          title: "Effect and Sound",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 80.w,
                    height: 80.h,
                    child: Column(
                      children: [
                        Container(
                          width: 60.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xffB26AFE),
                                Color(0xff9D6FFD),
                              ]),
                              shape: BoxShape.circle),
                          child: Image.asset(
                            "assets/chatroom/share.png",
                            width: 15.w,
                            height: 15.h,
                            fit: BoxFit.fitHeight,
                            color: Colors.white,
                          ),
                        ),
                        CustomText(
                          title: "Share",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 85.w,
                    child: Column(
                      children: [
                        Container(
                          width: 56.w,
                          height: 56.h,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xff20D0E0),
                                Color(0xff5FF37A)
                              ]),
                              shape: BoxShape.circle),
                          child: Image.asset(
                            "assets/chatroom/dailytask.png",
                            width: 65.w,
                            height: 65.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        CustomText(
                          title: "Daily Task",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ));
    },
  );
}

void _showWaitingList(BuildContext context) {
  List<Map<String, dynamic>> wishList = [
    {
      "name": "Kayan 😍",
      "img": "assets/u12.png",
      "icons": [
        "assets/chatroom/f1.png",
        "assets/chatroom/f2.png",
        "assets/chatroom/f3.png",
      ]
    },
  ];
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
          width: 390.w,
          padding: EdgeInsets.all(8.w),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15.w),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Waiting List",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: wishList.length,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        child: ListTile(
                          leading: Image.asset(
                            "${wishList[index]['img']}",
                            height: 30.h,
                            width: 30.w,
                          ),
                          title: Text(
                            "${wishList[index]['name']}",
                          ),
                          subtitle: Row(
                            children: [
                              Image.asset(
                                "${wishList[index]['icons'][0]}",
                                height: 17.h,
                                width: 17.w,
                              ),
                              Image.asset(
                                "${wishList[index]['icons'][1]}",
                                height: 17.h,
                                width: 17.w,
                              ),
                              Image.asset(
                                "${wishList[index]['icons'][2]}",
                                height: 17.h,
                                width: 17.w,
                              ),
                            ],
                          ),
                          trailing: Container(
                            width: 70.w,
                            child: Row(
                              children: [
                                InkWell(
                                    onTap: () {},
                                    child: Icon(Icons.close, size: 18.h)),
                                SizedBox(
                                  width: 5.w,
                                ),
                                InkWell(
                                    onTap: () {},
                                    child: Icon(Icons.check, size: 18.h)),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              CustomButtonOne(
                width: 300.w,
                onTab: () {},
                title: "Mic Request",
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.btnColor,
              ),
            ],
          ));
    },
  );
}

void _showOnlinePeople(BuildContext context) {
  List<Map<String, dynamic>> wishList = [
    {
      "name": "Kayan 😍",
      "img": "assets/u12.png",
      "icons": [
        "assets/chatroom/f1.png",
        "assets/chatroom/f2.png",
        "assets/chatroom/f3.png",
      ]
    },
  ];
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
          width: 390.w,
          padding: EdgeInsets.all(8.w),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.w),
                alignment: Alignment.center,
                child: CustomText(
                  title: "25 People Online",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 100.h,
                child: ListView.builder(
                    itemCount: wishList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20.w),
                              alignment: Alignment.centerLeft,
                              child: CustomText(
                                title: "Homeowner",
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                textAlign: TextAlign.left,
                              ),
                            ),
                            ListTile(
                              onTap: () {
                                _showOnlineUserDetails(context);
                              },
                              leading: Image.asset(
                                "${wishList[index]['img']}",
                                height: 30.h,
                                width: 30.w,
                              ),
                              title: Text(
                                "${wishList[index]['name']}",
                              ),
                              subtitle: Row(
                                children: [
                                  Image.asset(
                                    "${wishList[index]['icons'][0]}",
                                    height: 17.h,
                                    width: 17.w,
                                  ),
                                  Image.asset(
                                    "${wishList[index]['icons'][1]}",
                                    height: 17.h,
                                    width: 17.w,
                                  ),
                                  Image.asset(
                                    "${wishList[index]['icons'][2]}",
                                    height: 17.h,
                                    width: 17.w,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              Container(
                height: 100.h,
                child: ListView.builder(
                    itemCount: wishList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20.w),
                              alignment: Alignment.centerLeft,
                              child: CustomText(
                                title: "Admin",
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                textAlign: TextAlign.left,
                              ),
                            ),
                            ListTile(
                              leading: Image.asset(
                                "${wishList[index]['img']}",
                                height: 30.h,
                                width: 30.w,
                              ),
                              title: Text(
                                "${wishList[index]['name']}",
                              ),
                              subtitle: Row(
                                children: [
                                  Image.asset(
                                    "${wishList[index]['icons'][0]}",
                                    height: 17.h,
                                    width: 17.w,
                                  ),
                                  Image.asset(
                                    "${wishList[index]['icons'][1]}",
                                    height: 17.h,
                                    width: 17.w,
                                  ),
                                  Image.asset(
                                    "${wishList[index]['icons'][2]}",
                                    height: 17.h,
                                    width: 17.w,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              Container(
                height: 100.h,
                child: ListView.builder(
                    itemCount: wishList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20.w),
                              alignment: Alignment.centerLeft,
                              child: CustomText(
                                title: "Member",
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                textAlign: TextAlign.left,
                              ),
                            ),
                            ListTile(
                              leading: Image.asset(
                                "${wishList[index]['img']}",
                                height: 30.h,
                                width: 30.w,
                              ),
                              title: Text(
                                "${wishList[index]['name']}",
                              ),
                              subtitle: Row(
                                children: [
                                  Image.asset(
                                    "${wishList[index]['icons'][0]}",
                                    height: 17.h,
                                    width: 17.w,
                                  ),
                                  Image.asset(
                                    "${wishList[index]['icons'][1]}",
                                    height: 17.h,
                                    width: 17.w,
                                  ),
                                  Image.asset(
                                    "${wishList[index]['icons'][2]}",
                                    height: 17.h,
                                    width: 17.w,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ));
    },
  );
}

void _showOnlineUserDetails(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        width: 390.w,
        padding: EdgeInsets.all(8.w),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/chatroom/g.png",
                          height: 40.h,
                          width: 40.w,
                        ),
                        Container(
                          height: 16.h,
                          width: 41.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xff773C10),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: CustomText(
                            title: "802",
                            textColor: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/chatroom/right_arrow.png",
                          height: 25.h,
                          width: 25.w,
                        ),
                        Image.asset(
                          "assets/chatroom/right_arrow.png",
                          height: 25.h,
                          width: 25.w,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.w),
              alignment: Alignment.center,
              child: CustomText(
                title: "☆☬ur prince☬☆",
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/chatroom/f1.png",
                  height: 17.h,
                  width: 17.w,
                ),
                Image.asset(
                  "assets/chatroom/f2.png",
                  height: 17.h,
                  width: 17.w,
                ),
                Image.asset(
                  "assets/chatroom/f3.png",
                  height: 17.h,
                  width: 17.w,
                ),
              ],
            ),
            SizedBox(height: 15.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10.w),
                  alignment: Alignment.center,
                  child: CustomText(
                    title: 'ID: 90790400',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    textColor: Color(0xff71717D),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 10.w,),
                Icon(Icons.copy, size:15.h),
                SizedBox(width: 15.w,),
                Container(
                  margin: EdgeInsets.only(top: 10.w),
                  alignment: Alignment.center,
                  child: CustomText(
                    title: 'Bangladesh',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    textColor: Color(0xff71717D),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              margin: EdgeInsets.only(top: 10.w),
              alignment: Alignment.center,
              child: CustomText(
                title: 'My CP',
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10.w),
                  alignment: Alignment.center,
                  child: CustomText(
                    title: 'Currently no CP.',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    textColor: Color(0xff71717D),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.w),
                  alignment: Alignment.center,
                  child: CustomText(
                    title: 'Go to be their first CP!',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    textColor: Color(0xff8341FF),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/chatroom/add_friend.png",
                          height: 40.h,
                          width: 40.w,
                        ),
                        Container(
                          child: CustomText(
                            title: "Add Friend",
                            textColor: Color(0xff71717D),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/chatroom/gift.png",
                          height: 40.h,
                          width: 40.w,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: CustomText(
                            title: "Send Gifts",
                            textColor: Color(0xff71717D),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset("assets/chatroom/add.png",
                            height: 40.h,
                            width: 40.w,
                            color: Color(0xff02CD3E)),
                        Container(
                          alignment: Alignment.center,
                          child: CustomText(
                            title: "Follow",
                            textColor: Color(0xff71717D),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
