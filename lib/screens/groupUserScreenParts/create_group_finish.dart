import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kitti/util/colors.dart';

class CreateGroupFinish extends StatefulWidget {
  const CreateGroupFinish({super.key});

  @override
  State<CreateGroupFinish> createState() => _CreateGroupFinishState();
}

class _CreateGroupFinishState extends State<CreateGroupFinish> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Create Group"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Container(
              width: 384.w,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              //  borderRadius: BorderRadius.circular(50.r)
                              ),
                          child: Center(
                            child: CircleAvatar(
                                radius: 55.r, // Adjust the size
                                backgroundImage:
                                    AssetImage("assets/userjoin.png")),
                          )),
                      Positioned(
                          child: Container(
                              // width: 30.w,
                              // height: 30.h,

                              decoration: BoxDecoration(
                                color: AppColors.btnColor,
                              ),
                              child: Center(
                                child: CircleAvatar(
                                    radius: 15.r,
                                    child: Container(
                                      color: AppColors.btnColor,
                                      padding: EdgeInsets.all(5.r),
                                    child: Image.asset("assets/carema.png"),
                                    )
                                    // Adjust the size
                                    ),
                              ))),
                    ],
                  ),
                  Container(
                    width: 258.w,
                    child: Column(
                      children: [
                        Container(
                          width: 258.w,
                          height: 50.h,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Group Name",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1.w,
                                    color: AppColors.btnColor), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          width: 278.w,
                          height: 50.h,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Group Bio",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1.w,
                                    color: AppColors.btnColor), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              //  width: 391.w,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Location",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10.w),
              child: Text(
                "Group Tags",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              //  width: 391.w,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  Container(
                    height: 30.h,
                    width: 86.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Color(0xffF1F1F1)),
                    child: Text(
                      "Music",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.btnColor),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    height: 30.h,
                    width: 112.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Color(0xffF1F1F1)),
                    child: Text(
                      "Friendship",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.btnColor),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    height: 30.h,
                    width: 121.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Color(0xffF1F1F1)),
                    child: Text(
                      "Voicerooom",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.btnColor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.w,
            ),
            Container(
              height: 30.h,
              padding: EdgeInsets.only(left: 10.w),
              alignment: Alignment.centerLeft,
              child: Text(
                "Selected Members",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10.w,
            ),
            Container(
                height: 50.h,
                padding: EdgeInsets.only(left: 5.w),
                alignment: Alignment.centerLeft,
                child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Center(
                        child: CircleAvatar(
                            radius: 45.r, // Adjust the size
                            backgroundImage: AssetImage("assets/userjoin.png")),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
