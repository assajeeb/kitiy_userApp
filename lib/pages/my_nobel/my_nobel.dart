import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'my_nobel_tab.dart';
import 'nobel_rank.dart';


class MyNobel extends StatefulWidget {
  @override
  _MyNobelState createState() => _MyNobelState();
}

class _MyNobelState extends State<MyNobel>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  RxInt selectedIndex = 0.obs;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
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



    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("My Nobel",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Colors.black),),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: (){
              Get.to(()=>NobelRank());
            },
            child: Padding(
              padding:  EdgeInsets.only(right: 15.w),
              child: Image.asset("images/icons/rankic.png",width: 30.w,height: 30.w,),
            ),
          ),

        ],
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Column(
        children: [

          Container(

            height: 300.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.r,
                  backgroundImage: AssetImage("images/image/smp.png"),
                ),
                SizedBox(height: 12.h,),
                Text("Habib",style: TextStyle(fontSize: 22.sp,fontWeight: FontWeight.w500,color: Colors.black),)
                , SizedBox(height: 8.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/icons/n2.png",width: 118.w,height: 30.w,),
                    SizedBox(width: 15.w,),
                    Image.asset("images/icons/n1.png",width: 118.w,height: 30.w,)
                  ],

                ),
                SizedBox(height: 10.h,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Need "
                        ,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,
                            color: Color(0xff808080)),),

                      Image.asset("images/icons/nobel.png",width: 20.w,height: 20.w,),

                      Text(" 252000"
                        ,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,
                            color: Color(0xffFFA400)),),
                      Text(" to secure current noble level"
                        ,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,
                            color: Color(0xff808080)),),

                    ]),
                Text("marquis"
                  ,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,
                      color: Color(0xff808080)),),


              ],
            ),
          ),



          // Middle TabBar
         Container(
           decoration: BoxDecoration(
             color: Color(0xffF1F1F1),
             borderRadius: BorderRadius.circular(25.r)
           ),
           margin:EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
           height: 420.h,

           child: Column(
             children: [


               TabBar(
                 indicatorColor: Color(0xff0B5F84),
                 controller: tabController,
                 dividerHeight: 0,
                 labelColor: Color(0xff202020),

                 labelStyle: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,color: Color(0xff0B5F84)),
                 unselectedLabelColor: Colors.black,


                 tabs: [
                 Tab(
                   text: "Convert",
                   icon: Image.asset("images/icons/pre.png",width: 20.w,height: 20.w,),

                 ),
                   Tab(
                     text: "Duke",
                     icon: Image.asset("images/icons/pre.png",width: 20.w,height: 20.w,),

                   ),
                   Tab(
                     text: "knight",
                     icon: Image.asset("images/icons/pre.png",width: 20.w,height: 20.w,),

                   ),
                   Tab(
                     text: "Baron",
                     icon: Image.asset("images/icons/pre.png",width: 20.w,height: 20.w,),

                   ), Tab(
                     text: "Convert",
                     icon: Image.asset("images/icons/pre.png",width: 20.w,height: 20.w,),

                   ),

                 ],
               ),

               // TabBarView
               Expanded(
                 child: TabBarView(
                   controller: tabController,
                   children: [
                     MyNobelTab(),
                     MyNobelTab(),
                     MyNobelTab(),
                     MyNobelTab(),
                     MyNobelTab(),
                   ],
                 ),
               ),
             ],
           ),
         )
        ],
      ),
    );
  }
}
