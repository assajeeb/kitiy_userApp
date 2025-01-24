import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BlackdiTab extends StatefulWidget {
  const BlackdiTab({super.key});

  @override
  State<BlackdiTab> createState() => _BlackdiTabState();
}

class _BlackdiTabState extends State<BlackdiTab> with SingleTickerProviderStateMixin {

  late TabController tabController;
  RxInt selectedIndex = 0.obs;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      selectedIndex.value = tabController.index;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15.h,),
        Stack(children: [
          Positioned(
            top: 73,
            left: 33,
            child: CircleAvatar(
              radius: 25.r,
              backgroundImage: AssetImage("images/image/smp.png"),
            ),
          ),
          Positioned(
            top: 73,
            right: 33,
            child: CircleAvatar(
              radius: 25.r,
              backgroundImage: AssetImage("images/image/smp.png"),
            ),
          ),
          Positioned(
            top: 16,
            left: 175,
            child: CircleAvatar(
              radius: 25.r,
              backgroundImage: AssetImage("images/image/smp.png"),
            ),
          ),

          Image.asset(
            "images/image/blp.png",
            fit: BoxFit.cover,
          ),
          Positioned(
              top: 131,
              right: 36,
              child: Text(
                "Habib",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff202020)),
              )),
          //left name
          Positioned(
              top: 131,
              left: 36,
              child: Text(
                "Habib",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff202020)),
              )),
          Positioned(
              top: 75,
              right: 190,
              child: Text(
                "Habib",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff202020)),
              )),
          Positioned(
            top: 208,
            left: 5,
            child: Container(
              width: 110.w,
              height: 29.h,
              decoration: BoxDecoration(
                color: Color(0xff8CBAC5),
                border: Border.all(color: Color(0xffD6D2D2), width: 1.w),
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/icons/blackD.png",
                    width: 17.w,
                    height: 17.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "124004",
                    style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 208,
            right: 5,
            child: Container(
              width: 110.w,
              height: 29.h,
              decoration: BoxDecoration(
                color: Color(0xff8CBAC5),
                border: Border.all(color: Color(0xffD6D2D2), width: 1.w),
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/icons/blackD.png",
                    width: 17.w,
                    height: 17.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "124004",
                    style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 155,
            right: 155,
            child: Container(
              width: 110.w,
              height: 29.h,
              decoration: BoxDecoration(
                color: Color(0xff8CBAC5),
                border: Border.all(color: Color(0xffD6D2D2), width: 1.w),
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset(
                    "images/icons/blackD.png",
                    width: 17.w,
                    height: 17.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "124004",
                    style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ]),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r)
              ),
            ),
            child: ListView.builder(
              itemCount: 5,
                itemBuilder: (context, index){
                  return Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                    child: Row(
                      children: [
                        Text("4",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600,color: Color(0xff202020)),),
                        SizedBox(width: 8.w,),
                        CircleAvatar(
                          radius: 22.5.r,
                          backgroundImage: AssetImage("images/image/smp1.png"),
                        ),
                        SizedBox(width: 5.w,),
                        Column(
                          children: [
                            Text("Habib khan",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),),
                         Row(
                           children: [
                             Image.asset("images/image/batch.png",width: 30.w,height: 30.w,),
                             Image.asset("images/image/batch.png",width: 30.w,height: 30.w,),
                             Image.asset("images/image/batch.png",width: 30.w,height: 30.w,),
                           ],
                         )
                         
                          ],
                        ),
                        Spacer(),
                        Obx(
                              () => Row(
                            children: [
                              selectedIndex.value == 1
                                  ? Image.asset("images/icons/blackD.png", width: 16.w, height: 16.w)
                                  : Image.asset("images/icons/dd.png", width: 16.w, height: 16.w),
                              SizedBox(width: 5.w),
                              Text(
                                "124004",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff202020)),
                              ),
                            ],
                          ),
                        ),


                      ],
                    ),
                  );
                })
          ),
        )

      ],
    );
  }
}
