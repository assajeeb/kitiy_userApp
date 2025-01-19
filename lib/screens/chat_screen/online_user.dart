
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kitti/widgets/custom_text.dart';

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
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
                top: -50,
                left: 100.w,
                right: 100.w,

                child: Center(
                  child: CircleAvatar(
                    radius: 50.r,
                    child: Image.asset("assets/chatroom/details.png"),
                  ),
                )),
            Column(
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
                              height: 43.h,
                              width: 43.w,
                              fit: BoxFit.cover,
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
          ],
        ),
      );
    },
  );
}
