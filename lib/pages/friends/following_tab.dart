import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FollowingTab extends StatefulWidget {
  const FollowingTab({super.key});

  @override
  State<FollowingTab> createState() => _FollowingTabState();
}

class _FollowingTabState extends State<FollowingTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index){
            return Column(
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 5),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 27.r,
                        backgroundImage: AssetImage("images/image/smp.png"),
                      ),
                      SizedBox(width: 10.sp,),
                      Text("Md Habib Khan"
                        ,style: TextStyle(color: Color(0xff0B5F84),fontSize: 18.sp,fontWeight: FontWeight.w400,),),

                      Spacer(),
                      Image.asset("images/icons/req.png",width: 35.w,height: 35.w,)
                    ],
                  ),
                ),
                Divider(color: Colors.grey.withOpacity(.4),)
              ],
            );
          }),
    );
  }
}
