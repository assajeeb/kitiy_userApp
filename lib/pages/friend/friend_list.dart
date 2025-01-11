import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../recharge_coin/recharge_coin.dart';
import 'friend_listC.dart';
import 'inbox.dart';

class FriendList extends StatefulWidget {
  const FriendList({super.key});

  @override
  State<FriendList> createState() => _FriendListState();
}

class _FriendListState extends State<FriendList> {


  FriendListController friendListController= Get.put(FriendListController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Obx(()=>Expanded(
        child: ListView.builder(
            itemCount: friendListController.friendList.length,
            itemBuilder: (context, index){
              return Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 15.w),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap:(){
                            Get.to(()=>RechargeCoin());
                          },
                          child: CircleAvatar(
                            radius: 22.5.r,
                            backgroundImage: AssetImage(friendListController.friendList[index]["image"]),
                          ),
                        ),
                        SizedBox(width: 15.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(friendListController.friendList[index]['text'],style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff0B5F84)),),
                            Text(friendListController.friendList[index]['text1'],style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),),

                          ],
                        ),
                        Spacer(),

                        GestureDetector(
                          onTap: (){
                            Get.to(()=>Inbox());
                          },
                            child: Image.asset("images/icons/msgg.png",width: 35.w,height: 35.h,))

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
