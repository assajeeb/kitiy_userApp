import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'block_controller.dart';

class Block extends StatefulWidget {
  const Block({super.key});

  @override
  State<Block> createState() => _BlockState();
}

class _BlockState extends State<Block> {

  final BlockController blockController= Get.put(BlockController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: -10.sp,
        title: Text(
          "Block List",
          style: TextStyle(color: Color(0xff2B2B2B), fontSize: 18.sp, fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            Text("Blocked users are not allowed to message you, call you, or invite you to groups and VoiceClub rooms.",
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400,color: Color(0xff808080)),),
            SizedBox(height: 15.h,),
            Divider(color:  Color(0xff808080).withOpacity(.4),),
            Obx(()=>Expanded(
              child: ListView.builder(
                  itemCount: blockController.blockList.length,
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.symmetric(vertical: 5.h,horizontal: 5.w),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 22.5.r,
                                backgroundImage: AssetImage(blockController.blockList[index]["image"]),
                              ),
                              SizedBox(width: 15.w,),
                              Text(blockController.blockList[index]['text'],style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff0B5F84)),),
                              Spacer(),

                              Image.asset("images/icons/blocic.png",width: 25.w,height: 25.h,)

                            ],
                          ),
                        ),
                        Divider(color:  Color(0xff808080).withOpacity(.3),),
                      ],
                    );

                  }),
            ))

          ],
        ),
      ),
    );
  }
}
