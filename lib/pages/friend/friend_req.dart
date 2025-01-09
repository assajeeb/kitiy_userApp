import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'friend_reqC.dart';

class FriendReq extends StatefulWidget {
  const FriendReq({super.key});

  @override
  State<FriendReq> createState() => _FriendReqState();
}

class _FriendReqState extends State<FriendReq> {

  FriendReqController friendReqController= Get.put(FriendReqController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Obx(()=>Expanded(
        child: ListView.builder(
            itemCount: friendReqController.friendReqest.length,
            itemBuilder: (context, index){
              return Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 15.w),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25.r,
                          backgroundImage: AssetImage(friendReqController.friendReqest[index]["image"]),
                        ),
                        SizedBox(width: 15.w,),
                        Column(
                          children: [
                            Text(friendReqController.friendReqest[index]['text'],style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,color: Color(0xff0B5F84)),),
                            Row(

                              children: [
                                Image.asset("images/icons/bdg1.png",width: 17.98,height: 20,),
                                SizedBox(width: 3.w,),
                                Image.asset("images/icons/bdg2.png",width: 16.98,height: 20,),
                                SizedBox(width: 3.w,),
                                Image.asset("images/icons/bdg3.png",width: 27.98,height: 20,),

                              ],
                            )
                          ],
                        ),
                        Spacer(),

                        ElevatedButton(
                          onPressed: (){},
                          child: Text("Confirm",style: TextStyle(color:Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w400 ),),
                          style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(Color(0xff0B5F84) ),
                              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Color(0xff0B5F84)
                                  ),
                                  borderRadius: BorderRadius.circular(10.r)
                              ))

                          ),
                        ),
                        SizedBox(width: 10.w,),
                        ElevatedButton(
                          onPressed: (){},
                          child: Text("Delete",style: TextStyle(color:Color(0xff202020),fontSize: 16.sp,fontWeight: FontWeight.w400 ),),
                          style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(Color(0xffF5F5F5)),
                              shape: WidgetStatePropertyAll(RoundedRectangleBorder(

                                  borderRadius: BorderRadius.circular(10.r)
                              ))

                          ),
                        ),

                      ],
                    ),
                  ),
                  Divider(color:  Color(0xff808080).withOpacity(.3),),
                ],
              );

            }),
      )),
    );
  }
}
