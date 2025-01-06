import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitti/screens/groupUserScreenParts/create_group_finish.dart';
import 'package:kitti/screens/group_user_screen.dart';
import 'package:kitti/screens/public_group.dart';
import 'package:kitti/util/colors.dart';
import 'package:kitti/widgets/custom_button_one.dart';

class CreateGroup extends StatefulWidget {
  CreateGroup({super.key});

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  var groupValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Group"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50.h,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return SizedBox(
                          width: 40.w,
                          height: 40.h,
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5.w),
                              child: Image.asset("assets/icons/profile.png")));
                    }),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 300.w,
                child: Center(
                  child: Text(
                    "Group Type",
                    style: TextStyle(fontSize: 12.sp, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                      width: 120.w,
                      title: "Public",
                      img: "assets/icons/lock.png",
                      onTab: () {
                        setState(() {
                          index = 0;
                        });
                      }),
                  CustomButton(
                    width: 120.w,
                    title: "Private",
                    img: "assets/icons/earth.png",
                    onTab: () {
                      setState(() {
                        index = 1;
                      });
                    },
                  ),
                ],
              ),
              groupList[index]
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomButtonOne(
        title: "Create Group",
        textColor: Colors.white,
        color: AppColors.btnColor,
        width: 150.w,
        onTab: (){
Get.to(CreateGroupFinish());
        },
      ),
    );
  }

  int index = 0;

  List<Widget> groupList = [PublicGroup(), PrivateGroup()];
}

class CustomButton extends StatelessWidget {
  final title;
  final width;
  final img;
  VoidCallback onTab;
  CustomButton({
    this.title,
    this.width,
    this.img,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        width: width ?? 100.w,
        height: 35.h,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          border: Border.all(width: 0.5, color: Colors.black12),
          borderRadius: BorderRadius.circular(15.r),
        ),
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset("$img"),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "$title",
                style: TextStyle(fontSize: 12.sp, color: Colors.black),
              ),
            ],
          ),
        ),

    );
  }
}
