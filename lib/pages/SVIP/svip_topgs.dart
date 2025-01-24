import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'blackdi_tab.dart';

class SvipTopgs extends StatefulWidget {

   SvipTopgs({super.key, });

  @override
  State<SvipTopgs> createState() => _SvipTopgsState();
}

class _SvipTopgsState extends State<SvipTopgs> with SingleTickerProviderStateMixin {

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
    return Scaffold(

      body: Stack(
        children: [Column(
          children: [
            Container(
              width: double.infinity,
              height: 418.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/image/Blbg.png"),fit: BoxFit.fill)
              ),
              child: Column(
                children: [
                  SizedBox(height: 20.h,),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white,size: 25.r,),
                      ),
                      Text("top sender",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                    ],
                  ),




                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Color(0xff007694),
              ),
            )
          ],
        ),

          Column(
            children: [
              SizedBox(height: 70.h,),
              TabBar(

                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                controller: tabController,
                dividerHeight: 1,
                labelColor: Colors.white,
                dividerColor: Color(0xffF1F1F1),



                labelStyle: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600,),
                unselectedLabelColor: Color(0xffCDCDCD),
                unselectedLabelStyle: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,),



                tabs: [
                  Tab(
                    text: "Black Diamonds",

                  ),
                  Tab(
                    text: "Total Diamonds",

                  ),

                ],

              ),

              // TabBarView
              Expanded(
                child: TabBarView(
                    controller: tabController,
                    children: [
                      BlackdiTab(),
                      BlackdiTab(),

                    ]

                ),
              ),
            ],
          )


        ]
      ),
    );
  }
}
