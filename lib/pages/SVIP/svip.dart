import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitiy_userapp/pages/SVIP/svip_rankList.dart';
import 'package:kitiy_userapp/pages/SVIP/svip_tab.dart';

class Svip extends StatefulWidget {
  const Svip({super.key});

  @override
  State<Svip> createState() => _SvipState();
}


class _SvipState extends State<Svip> with SingleTickerProviderStateMixin {
  late TabController tabController;
  RxInt selectedIndex = 0.obs;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 6, vsync: this);
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
      backgroundColor: Color(0xff202020),
      appBar: AppBar(
        backgroundColor: Color(0xff202020),
        title: Text("SVIP",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Colors.white),),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: (){
              Get.to(()=>SvipRank());
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
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              height: 134.w,
              width: double.infinity,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15.r),
               color: Colors.white
             ),
              child: Column(
                children: [
        
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30.r,
                          backgroundImage: AssetImage("images/image/smp.png"),
                        ),
                        SizedBox(width: 15.w,),
                        Text("Habib",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),),
                        Spacer(),
                        Padding(
                          padding:  EdgeInsets.only(right: 15.w),
                          child: Image.asset("images/image/bdgeBB.png",width: 88.89.w,height: 80.w,),
                        )
        
                      ],
                    ),
                  ),
                  Spacer(),
        
                  Container(
                    height: 30.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.r),
                          bottomRight: Radius.circular(15.r),
                           ),
                        color: Color(0xff0B5F84)
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15.h,),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
              height: 89.h,
              width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.white
                ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(

                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("This Month’s Expire",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 15.sp,color: Colors.black),),
                        SizedBox(height: 10.w,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("SVIP0",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14.sp,color: Colors.black),),
                            SizedBox(width: 5.w,),
                            Container(
                              height: 17.h,
                              width: 204.w,
                              decoration: BoxDecoration(
                                color: Color(0xff0B5F84),
                                borderRadius: BorderRadius.circular(25.r)
                              ),
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 8.r,
                                    backgroundColor: Colors.white,
                                    child: Image.asset("images/icons/blackD.png",width: 14.w,height: 10.w,),
                                  ),
                                  SizedBox(width: 10.w,),
                                  Text("0/10000",style:
                                  TextStyle(fontWeight: FontWeight.w400,fontSize: 14.sp,color: Colors.white),),
                                ],
                              ),
                            ),
                            SizedBox(width: 5.w,),
                            Text("SVIP1",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14.sp,color: Colors.black),),
        
        
                          ],
                        )
                      ],
                    ),
                    SizedBox(width: 10.w,),
                    Padding(
                      padding:  EdgeInsets.only(bottom: 10.w),
                      child: GestureDetector(
                        onTap: (){

                            Get.bottomSheet(

                              Container(
                                width: double.infinity,

                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("images/image/bbs.png"),fit: BoxFit.fill),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15.r),
                                    topLeft: Radius.circular(15.r),
                                  )
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [

                                      Text("This Month’s EXP",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500,color: Colors.white),),
                                      SizedBox(height: 10.w,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,

                                        children: [
                                          Text("SVIP0",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14.sp,color: Colors.white),),
                                          SizedBox(width: 10.w,),
                                          Container(
                                            height: 17.h,
                                            width: 204.w,
                                            decoration: BoxDecoration(
                                                color: Color(0xff0B5F84),
                                                borderRadius: BorderRadius.circular(25.r)
                                            ),
                                            child:  Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                CircleAvatar(
                                                  radius: 8.r,
                                                  backgroundColor: Colors.white,
                                                  child: Text("EXP",style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 8.sp,color: Colors.black),),
                                                ),
                                                SizedBox(width: 10.w,),
                                                Text("0/10000",style:
                                                TextStyle(fontWeight: FontWeight.w400,fontSize: 14.sp,color: Colors.white),),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10.w,),
                                          Text("SVIP1",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14.sp,color: Colors.white),),


                                        ],
                                      ),
                                      SizedBox(height: 30.h,),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          bottomCards(),
                                          bottomCards(),
                                          bottomCards(),


                                        ],
                                      ),
                                      SizedBox(height: 10.h,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          bottomCards(),
                                          bottomCards(),
                                          bottomCards(),


                                        ],
                                      )




                                    ],
                                  ),
                                ),


                              ),

                            );
                          },

                        child: CircleAvatar(
                          radius: 20.r,
                          backgroundColor: Color(0xff0B5F84),
                          child: Image.asset("images/icons/up.png",width: 25.w,height: 25.w,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        
            ),
            SizedBox(height: 15.h,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r)
              ),
              margin:EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
              height: 598.h,

              child: Column(
                children: [


                 TabBar(

                      indicatorColor: Color(0xff0B5F84),
                      controller: tabController,
                      dividerHeight: 0,
                      labelColor: Color(0xff0B5F84),


                      labelStyle: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,),
                      unselectedLabelColor: Color(0xff202020),
                      isScrollable: true,


                      tabs: [
                        Tab(
                          text: "SVIP 1",

                        ),
                        Tab(
                          text: "SVIP 2",

                        ),
                        Tab(
                          text: "SVIP 3",

                        ),
                        Tab(
                          text: "SVIP 4",

                        ),
                        Tab(
                          text: "SVIP 5",

                        ),
                        Tab(
                          text: "SVIP 6",

                        ),

                      ],

                  ),

                  // TabBarView
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        SvipTab(),
                        SvipTab(),
                        SvipTab(),
                        SvipTab(),
                        SvipTab(),
                        SvipTab(),
                    ]

                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                stickersAll("SVIP Point\nStore"),
                stickersAll("Super Voice\n "),
                stickersAll("Ai Gift\n "),
                stickersAll("Unban\n "),
              ],
            ),
            SizedBox(height: 15.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                stickersAll("SVIP Point\nStore"),
                stickersAll("Super Voice\n "),
                stickersAll("Ai Gift\n "),
                stickersAll("Unban\n "),
              ],
            )
          ],
        ),
      ),

    );
  }
  Widget stickersAll(String title){
    return Column(
      children: [
        Container(
          width: 60.r,
          height: 60.r,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff333132),
                Color(0xff737373),
              ],
            ),
          ),
          child: Padding(
            padding:  EdgeInsets.all(9.r),
            child: Image.asset(
              'images/image/bdgeBB.png',
              height: 40.h,width: 44.44.w,
            ),
          ),
        ),
        SizedBox(height: 8.h,),
        Text(title,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Colors.white),textAlign: TextAlign.center,)
      ],
    );
  }

  Widget bottomCards(){
    return  Stack(
        children:[
          SizedBox(
            child: Image.asset("images/image/scrd.png",width: 120.w,height: 155.h,),
          ),
          Positioned(
            top: 10,
            right: 5,
            child: Container(
              width: 57.w,
              height: 24.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.r)
              ),
              child: Center(child: Text("SVIP1",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff808080)),)),
            ),
          ),
          Positioned(
            bottom: 6,
            left: 5,
            right: 5,

            child: Container(
              width: 108.w,
              height: 30.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.r)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Image.asset("images/icons/blackD.png",width: 20.w,height: 20.h,),
                  SizedBox(width: 5.w,),

                  Text("0.50",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Color(0xff000000)),),
                ],
              ),
            ),
          )
        ]
    );
  }

  
}
