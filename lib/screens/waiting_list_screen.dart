import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WaitingListScreen extends StatefulWidget {
  const WaitingListScreen({super.key});

  @override
  State<WaitingListScreen> createState() => _WaitingListScreenState();
}

class _WaitingListScreenState extends State<WaitingListScreen> {
  List<Map<String,dynamic> > userList =[
    {
      "img":"assets/u1.png",
    },
    {
      "img":"assets/u2.png",
    },
    {
      "img":"assets/u3.png",
    },
    {
      "img":"assets/u4.png",
    },
    {
      "img":"assets/u5.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    userList.shuffle();
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                children: [
                  Container(
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "꧁DOSTI💖TAK꧂",
                                style: TextStyle(
                                    fontSize: 12.sp, color: Colors.white),
                              ),
                            ),
                            Container(
                              child: Text(
                                "ID: 1215411",
                                style: TextStyle(
                                    fontSize: 12.sp, color: Color(0xff9198AA)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
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
                            borderRadius: BorderRadius.circular(16.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 15.w,
                              height: 15.h,
                              child: Image.asset("assets/icons/dimond.png"),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              child: Text(
                                "451",
                                style: TextStyle(
                                    fontSize: 12.sp, color: Color(0xff9198AA)),
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
                            borderRadius: BorderRadius.circular(16.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 15.w,
                              height: 15.h,
                              child: Image.asset("assets/icons/record.png"),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              child: Text(
                                "451",
                                style: TextStyle(
                                    fontSize: 12.sp, color: Color(0xff9198AA)),
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
                width: 190.w,
                decoration: BoxDecoration(),
                child: Row(
                  children: [
                    Container(
                      width: 40.w,
                      height: 39.h,
                      padding: EdgeInsets.all(5.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.r),
                              bottomLeft: Radius.circular(30.r)),
                          gradient: LinearGradient(
                              colors: [Color(0xffEE7F14), Color(0xffFBA106)])),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

Container(
  height: 50.w,
 width: 170.w,
 alignment: Alignment.centerRight,
  child: ListView.builder(
      itemCount: userList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index){
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


            Container(
              height: 150.h,
              child: GridView.builder(

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
                  itemCount: 10,


                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder:(context,index){
                    return  ListTile(
                      leading: Image.asset("assets/u2.png"),
                      title: Text("Md Habib Khan", style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black12
                      ),),

                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
