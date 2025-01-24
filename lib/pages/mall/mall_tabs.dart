import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'mall_controller.dart';

class MallTabs extends StatefulWidget {
  const MallTabs({super.key});

  @override
  State<MallTabs> createState() => _MallTabsState();
}

class _MallTabsState extends State<MallTabs> {
  @override
  Widget build(BuildContext context) {

    final MallControllerD mallControllerD =Get.put(MallControllerD());
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of items in a row
              crossAxisSpacing: 10.0, // Horizontal spacing
              mainAxisSpacing: 10.0,
              childAspectRatio: .7

            ),
            itemCount: mallControllerD.mallData.length,
            itemBuilder: (context,index){
              return Container(
                width: 190.w,
                height: 286.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xffF1F1F1),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("images/image/new.png",width: 48.w,height: 50.h,),
                        Spacer(),
                        Padding(
                          padding:  EdgeInsets.only(right: 10.w),
                          child: CircleAvatar(
                            backgroundColor: Color(0xff0B5F84),
                            radius: 14.r,
                            child: Icon(Icons.play_arrow_rounded,color: Colors.white,),
                          ),
                        )
                      ],
                    ),
                    Image.asset(
                      'images/image/bdgeBB.png',
                      height: 90.h,width: 100.w,
                    ),
                    SizedBox(height: 20.h,),
                    Text("Golden Honor",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Colors.black),),
                    SizedBox(height: 3.h,),
                    Text("Validity: 15days",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Color(0xff0B5F84)),),

                    SizedBox(height: 20.h,),
                    SizedBox(
                      width: 150.w,
                      height: 36.h,
                      child: ElevatedButton(
                        onPressed: () {
                         Get.bottomSheet(

                           backgroundColor: Colors.white,
                           SizedBox(
                             width: double.infinity,
                             height: 372.h,
                             child: Stack(
                                 clipBehavior: Clip.none,
                                alignment: Alignment.topCenter,
                               children:[
                                 Positioned(
                                   top:-40,

                                   child: Image.asset(
                                     'images/image/bdgeBB.png',
                                     height: 90.h,width: 100.w,
                                   ),
                                 ),



                                 SizedBox(
                                   width: double.infinity,
                                   child: Padding(
                                     padding:  EdgeInsets.symmetric(horizontal: 15.w),
                                     child: Column(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                     children: [
                                       SizedBox(height: 60.h,),
                                       Text("Golden Honor",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Colors.black),),
                                       SizedBox(height: 25.h,),
                                       Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                         children: [
                                           Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                             children: [
                                               items(),
                                               items(),
                                             ],
                                           ),
                                           SizedBox(height: 15.h,),
                                           Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                             children: [
                                               items(),
                                               items(),
                                             ],
                                           ),
                                         ],
                                       ),
                                       SizedBox(height: 25.h,),
                                       SizedBox(
                                         width: double.infinity,
                                         height: 48.h,
                                         child: ElevatedButton(
                                           onPressed: () {

                                           },
                                           child: Text(
                                             "BUY",
                                             style: TextStyle(color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.w500),
                                           ),
                                           style: ButtonStyle(
                                             shape:  WidgetStatePropertyAll(RoundedRectangleBorder(

                                               borderRadius: BorderRadius.circular(25.r),
                                             ),),
                                             backgroundColor: WidgetStatePropertyAll((Color(0xffC6CCF6)),
                                             ),
                                           ),
                                         ),
                                       )


                                     ],
                                     ),
                                   ),
                                 ),
                               ]
                             ),
                           )
                         );

                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(mallControllerD.mallData[index]["image"],width: 16.w,height: 16.h,),
                            SizedBox(width: 10.w,),

                            Text(
                              "1000",
                              style: TextStyle(color: Colors.black, fontSize: 15.sp, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                          shape:  WidgetStatePropertyAll(RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(25.r),
                          ),),
                          backgroundColor: WidgetStatePropertyAll((Color(0xffC6CCF6)),
                          ),
                        ),
                      ),
                    )
                    
                  ],
                ),
              );

            }),
      )
    );
  }
  Widget items(){
    return  Row(
      children: [
        Container(
            width: 190.w,
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Color(0xffF1F1F1)
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'images/icons/blackD.png',
                        height: 20.w,width: 20.w,
                      ),
                      SizedBox(width: 5.w,),
                      Text("1000",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),

                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(Icons.access_time_outlined,color: Color(0xff2B2B2B),),
                      SizedBox(width: 5.w,),
                      Text("3days",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),

                    ],
                  ),
                ],
              ),
            )
        )
      ],
    );
  }
}
