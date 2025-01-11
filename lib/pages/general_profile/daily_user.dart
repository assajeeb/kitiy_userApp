import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DailyUser extends StatefulWidget {
  const DailyUser({super.key});

  @override
  State<DailyUser> createState() => _DailyUserState();
}

class _DailyUserState extends State<DailyUser> {

  double _value = 20;
  final List<double> _labels = [20, 50, 120, 250];
  double _value1 = 20;
  final List<double> _labels1 = [20, 50, 120, 250];

  double _value2 = 10000;
  final List<double> _labels2 = [10000, 20000, 200000, 50000];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        titleSpacing: -10.sp,
        title: Text(
          "Daily User Task",
          style: TextStyle(color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white,size: 25.r,),
        ),
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: Icon(Icons.access_time_sharp, color: Colors.white,size: 25.r,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              width: 400.w,
            height: 455.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: Colors.white
        
            ),
              child: Column(

                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("In - Room Duration",
                          style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),),
                       Spacer(),
                        ElevatedButton(
                            onPressed: (){},
                            child: Text("Claim",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                        style: ButtonStyle(
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r)
                          )),
                          backgroundColor: WidgetStatePropertyAll(Color(0xffFF7089))
                        ),)

                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 30.w),
                    child: Row(
                      children: [
                        Icon(Icons.access_time,color: Color(0xff202020),size: 20.r,),
                        SizedBox(width: 5.w,),
                        Text("Weekly",
                          style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),),
                        SizedBox(width: 5.w,),
                        Text("10/5/2024 - 10/5/2024",
                          style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Color(0xff808080)),),


                      ],
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Row(

                    children: [
                      SizedBox(width: 25.h,),
                      Container(
                        width: 60.w,
                        height: 60.w,
                        decoration: BoxDecoration(
                          color: Color(0xffF1F1F1),
                          borderRadius: BorderRadius.circular(15.r)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/icons/ring.png",width: 30.w,height: 30.w,),
                            SizedBox(height: 5.h,),
                            Text("X1",style: TextStyle(color: Color(0xff202020),fontSize: 12.sp,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                      SizedBox(width: 10.h,),
                      Container(
                        width: 60.w,
                        height: 60.w,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(15.r)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/icons/ring.png",width: 30.w,height: 30.w,),
                            SizedBox(height: 5.h,),
                            Text("X1",style: TextStyle(color: Color(0xff202020),fontSize: 12.sp,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                      SizedBox(width: 10.h,),
                      Container(
                        width: 60.w,
                        height: 60.w,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(15.r)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/icons/ring.png",width: 30.w,height: 30.w,),
                            SizedBox(height: 5.h,),
                            Text("X1",style: TextStyle(color: Color(0xff202020),fontSize: 12.sp,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                      SizedBox(width: 10.h,),
                      Container(
                        width: 60.w,
                        height: 60.w,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(15.r)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/icons/ring.png",width: 30.w,height: 30.w,),
                            SizedBox(height: 5.h,),
                            Text("X3days",style: TextStyle(color: Color(0xff202020),fontSize: 12.sp,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                    ],
                  ),
                 Padding(
                   padding:  EdgeInsets.only(left: 25.w,top: 15.h),
                   child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                     children:[
                       SizedBox(
                         width: 271.w,
                         child: SliderTheme(
                           data: SliderTheme.of(context).copyWith(
                             activeTrackColor: Color(0xff0B5F84),


                             inactiveTrackColor: Colors.grey.shade300,
                             thumbColor: Colors.transparent,
                             overlayShape: SliderComponentShape.noOverlay,
                             thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
                             trackHeight: 6.0,
                           ),
                           child: Slider(
                             value: _value,
                             min: 20,
                             max: 250,
                             divisions: 3,
                             onChanged: (newValue) {
                               setState(() {
                                 _value = newValue;
                               });
                             },
                           ),
                         ),
                       ),
                       Padding(
                         padding:  EdgeInsets.only(right: 87.w,top: 5.h),
                         child: Row(

                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: _labels.map((label) {
                             return Text(
                               '${label.toInt()} Min',
                               style: TextStyle(fontSize: 10.sp, color: Color(0xff808080)),
                             );
                           }).toList(),
                         ),
                       ),
                     ]
                   ),
                 ),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.w),
                    child:  Divider(color: Color(0xff808080).withOpacity(.3)),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("In - Room Duration",
                          style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),),
                        Spacer(),
                        ElevatedButton(
                          onPressed: (){},
                          child: Text("GO",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Color(0xff808080)),),
                          style: ButtonStyle(
                              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r)
                              )),
                              backgroundColor: WidgetStatePropertyAll(Color(0xffF1F1F1))
                          ),)

                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 30.w),
                    child: Row(
                      children: [
                        Icon(Icons.access_time,color: Color(0xff202020),size: 20.r,),
                        SizedBox(width: 5.w,),
                        Text("Weekly",
                          style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),),
                        SizedBox(width: 5.w,),
                        Text("10/5/2024 - 10/5/2024",
                          style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Color(0xff808080)),),


                      ],
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  Row(

                    children: [
                      SizedBox(width: 25.h,),
                      Container(
                        width: 60.w,
                        height: 60.w,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(15.r)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/icons/ring.png",width: 30.w,height: 30.w,),
                            SizedBox(height: 5.h,),
                            Text("X1",style: TextStyle(color: Color(0xff202020),fontSize: 12.sp,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                      SizedBox(width: 10.h,),
                      Container(
                        width: 60.w,
                        height: 60.w,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(15.r)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/icons/ring.png",width: 30.w,height: 30.w,),
                            SizedBox(height: 5.h,),
                            Text("X1",style: TextStyle(color: Color(0xff202020),fontSize: 12.sp,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                      SizedBox(width: 10.h,),
                      Container(
                        width: 60.w,
                        height: 60.w,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(15.r)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/icons/ring.png",width: 30.w,height: 30.w,),
                            SizedBox(height: 5.h,),
                            Text("X1",style: TextStyle(color: Color(0xff202020),fontSize: 12.sp,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                      SizedBox(width: 10.h,),
                      Container(
                        width: 60.w,
                        height: 60.w,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(15.r)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/icons/ring.png",width: 30.w,height: 30.w,),
                            SizedBox(height: 5.h,),
                            Text("X3days",style: TextStyle(color: Color(0xff202020),fontSize: 12.sp,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 25.w,top: 15.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          SizedBox(
                            width: 271.w,
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Color(0xff0B5F84),


                                inactiveTrackColor: Colors.grey.shade300,
                                thumbColor: Colors.transparent,
                                overlayShape: SliderComponentShape.noOverlay,
                                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
                                trackHeight: 6.0,
                              ),
                              child: Slider(
                                value: _value1,
                                min: 20,
                                max: 250,
                                divisions: 3,
                                onChanged: (newValue) {
                                  setState(() {
                                    _value1 = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(right: 87.w,top: 5.h),
                            child: Row(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: _labels1.map((label) {
                                return Text(
                                  '${label.toInt()} Min',
                                  style: TextStyle(fontSize: 10.sp, color: Color(0xff808080)),
                                );
                              }).toList(),
                            ),
                          ),
                        ]
                    ),
                  ),
                  SizedBox(height: 20.h,),




                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              width: 400.w,
              height: 305.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.white

              ),
              child: Column(

                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("General Event Rank",
                          style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),),
                        Spacer(),
                        ElevatedButton(
                          onPressed: (){},
                          child: Text("Claim",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                          style: ButtonStyle(
                              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r)
                              )),
                              backgroundColor: WidgetStatePropertyAll(Color(0xffFF7089))
                          ),)

                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 30.w),
                    child: Row(
                      children: [
                        Icon(Icons.access_time,color: Color(0xff202020),size: 20.r,),
                        SizedBox(width: 5.w,),
                        Text("Weekly",
                          style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),),
                        SizedBox(width: 5.w,),
                        Text("10/5/2024 - 10/5/2024",
                          style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Color(0xff808080)),),


                      ],
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  Row(

                    children: [
                      SizedBox(width: 25.h,),
                      Container(
                        width: 60.w,
                        height: 60.w,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(15.r)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/icons/ring.png",width: 30.w,height: 30.w,),
                            SizedBox(height: 5.h,),
                            Text("X1",style: TextStyle(color: Color(0xff202020),fontSize: 12.sp,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                      SizedBox(width: 10.h,),
                      Container(
                        width: 60.w,
                        height: 60.w,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(15.r)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/icons/ring.png",width: 30.w,height: 30.w,),
                            SizedBox(height: 5.h,),
                            Text("X1",style: TextStyle(color: Color(0xff202020),fontSize: 12.sp,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                      SizedBox(width: 10.h,),
                      Container(
                        width: 60.w,
                        height: 60.w,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(15.r)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/icons/ring.png",width: 30.w,height: 30.w,),
                            SizedBox(height: 5.h,),
                            Text("X1",style: TextStyle(color: Color(0xff202020),fontSize: 12.sp,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                      SizedBox(width: 10.h,),
                      Container(
                        width: 60.w,
                        height: 60.w,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(15.r)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/icons/ring.png",width: 30.w,height: 30.w,),
                            SizedBox(height: 5.h,),
                            Text("X3days",style: TextStyle(color: Color(0xff202020),fontSize: 12.sp,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 25.w,top: 15.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          SizedBox(
                            width: 271.w,
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Color(0xff0B5F84),


                                inactiveTrackColor: Colors.grey.shade300,
                                thumbColor: Colors.transparent,
                                overlayShape: SliderComponentShape.noOverlay,
                                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
                                trackHeight: 6.0,
                              ),
                              child: Slider(
                                value: _value2,
                                min: 10000,
                                max: 50000,
                                divisions: 3,
                                onChanged: (newValue) {
                                  setState(() {
                                    _value2 = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(right: 40.w,top: 5.h),
                            child: Row(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: _labels2.map((label) {
                                return Row(
                                  children: [
                                    Image.asset("images/icons/exp.png",width: 17.w,height: 17.w,),
                                    SizedBox(width: 5.w,),
                                    Text(
                                      '${label.toInt()} Min',
                                      style: TextStyle(fontSize: 10.sp, color: Color(0xff808080)),
                                    ),
                                  ],
                                );
                              }).toList(),
                            ),
                          ),
                        ]
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.w),
                    child:  Divider(color: Color(0xff808080).withOpacity(.3)),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
                    child: Row(
                      children: [
                        Text("General Host Rank",
                          style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),),
                        Spacer(),
                        Stack(
                          children:[
                            CircleAvatar(
                            radius: 20.r,
                            backgroundImage: AssetImage("images/image/smp.png"),
                            ),
                           Positioned(
                             bottom: -2,
                               right: -5,
                               child: Image.asset("images/icons/a1.png",width: 25.w,height: 25.w,)),

                        ]
                        ),
                        SizedBox(width: 8.w,),
                        Stack(
                            children:[
                              CircleAvatar(
                                radius: 20.r,
                                backgroundImage: AssetImage("images/image/smp.png"),
                              ),
                              Positioned(
                                  bottom: -2,
                                  right: -5,
                                  child: Image.asset("images/icons/a2.png",width: 25.w,height: 25.w,)),

                            ]
                        ),
                        SizedBox(width: 8.w,),
                        Stack(
                            children:[
                              CircleAvatar(
                                radius: 20.r,
                                backgroundImage: AssetImage("images/image/smp.png"),
                              ),
                              Positioned(
                                  bottom: -2,
                                  right: -5,
                                  child: Image.asset("images/icons/a3.png",width: 25.w,height: 25.w,)),

                            ]
                        ),
                        SizedBox(width: 10.w,),
                        Icon(Icons.arrow_forward_ios,size: 20.r,color: Color(0xff808080),)
                      ],
                    ),
                  ),








                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              width: 400.w,
              height: 305.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.white

              ),
              child: Column(

                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Certificated Event Rank",
                          style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),),
                        Spacer(),
                        ElevatedButton(
                          onPressed: (){},
                          child: Text("Claim",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                          style: ButtonStyle(
                              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r)
                              )),
                              backgroundColor: WidgetStatePropertyAll(Color(0xffFF7089))
                          ),)

                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 30.w),
                    child: Row(
                      children: [
                        Icon(Icons.access_time,color: Color(0xff202020),size: 20.r,),
                        SizedBox(width: 5.w,),
                        Text("Weekly",
                          style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),),
                        SizedBox(width: 5.w,),
                        Text("10/5/2024 - 10/5/2024",
                          style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Color(0xff808080)),),


                      ],
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  Row(

                    children: [
                      SizedBox(width: 25.h,),
                      Container(
                        width: 60.w,
                        height: 60.w,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(15.r)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/icons/ring.png",width: 30.w,height: 30.w,),
                            SizedBox(height: 5.h,),
                            Text("X1",style: TextStyle(color: Color(0xff202020),fontSize: 12.sp,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                      SizedBox(width: 10.h,),
                      Container(
                        width: 60.w,
                        height: 60.w,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(15.r)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/icons/ring.png",width: 30.w,height: 30.w,),
                            SizedBox(height: 5.h,),
                            Text("X1",style: TextStyle(color: Color(0xff202020),fontSize: 12.sp,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                      SizedBox(width: 10.h,),
                      Container(
                        width: 60.w,
                        height: 60.w,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(15.r)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/icons/ring.png",width: 30.w,height: 30.w,),
                            SizedBox(height: 5.h,),
                            Text("X1",style: TextStyle(color: Color(0xff202020),fontSize: 12.sp,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                      SizedBox(width: 10.h,),
                      Container(
                        width: 60.w,
                        height: 60.w,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(15.r)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/icons/ring.png",width: 30.w,height: 30.w,),
                            SizedBox(height: 5.h,),
                            Text("X3days",style: TextStyle(color: Color(0xff202020),fontSize: 12.sp,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 25.w,top: 15.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          SizedBox(
                            width: 271.w,
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Color(0xff0B5F84),


                                inactiveTrackColor: Colors.grey.shade300,
                                thumbColor: Colors.transparent,
                                overlayShape: SliderComponentShape.noOverlay,
                                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
                                trackHeight: 6.0,
                              ),
                              child: Slider(
                                value: _value2,
                                min: 10000,
                                max: 50000,
                                divisions: 3,
                                onChanged: (newValue) {
                                  setState(() {
                                    _value2 = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(right: 40.w,top: 5.h),
                            child: Row(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: _labels2.map((label) {
                                return Row(
                                  children: [
                                    Image.asset("images/icons/exp.png",width: 17.w,height: 17.w,),
                                    SizedBox(width: 5.w,),
                                    Text(
                                      '${label.toInt()} Min',
                                      style: TextStyle(fontSize: 10.sp, color: Color(0xff808080)),
                                    ),
                                  ],
                                );
                              }).toList(),
                            ),
                          ),
                        ]
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
                    child:  Divider(color: Color(0xff808080).withOpacity(.3)),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      children: [
                        Text("Certificated Host Rank",
                          style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),),
                        Spacer(),
                        Stack(
                            children:[
                              CircleAvatar(
                                radius: 20.r,
                                backgroundImage: AssetImage("images/image/smp.png"),
                              ),
                              Positioned(
                                  bottom: -2,
                                  right: -5,
                                  child: Image.asset("images/icons/a1.png",width: 25.w,height: 25.w,)),

                            ]
                        ),
                        SizedBox(width: 8.w,),
                        Stack(
                            children:[
                              CircleAvatar(
                                radius: 20.r,
                                backgroundImage: AssetImage("images/image/smp.png"),
                              ),
                              Positioned(
                                  bottom: -2,
                                  right: -5,
                                  child: Image.asset("images/icons/a2.png",width: 25.w,height: 25.w,)),

                            ]
                        ),
                        SizedBox(width: 8.w,),
                        Stack(
                            children:[
                              CircleAvatar(
                                radius: 20.r,
                                backgroundImage: AssetImage("images/image/smp.png"),
                              ),
                              Positioned(
                                  bottom: -2,
                                  right: -5,
                                  child: Image.asset("images/icons/a3.png",width: 25.w,height: 25.w,)),

                            ]
                        ),
                        SizedBox(width: 10.w,),
                        Icon(Icons.arrow_forward_ios,size: 20.r,color: Color(0xff808080),)
                      ],
                    ),
                  ),
                  SizedBox(height: 5.h,)








                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
}
