import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitiy_userapp/pages/top_up/top_up_controller.dart';
import 'package:kitiy_userapp/pages/top_up/top_up_history.dart';

import '../general_profile/profile.dart';

class TopUp extends StatefulWidget {
  const TopUp({super.key});

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  

  TopUpController controller= Get.put(TopUpController());

  final ToptextEcontroller tcontroller =Get.put(ToptextEcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Top Up",
          style: TextStyle(color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
              onPressed: (){
                Get.to(()=>TopUpHistory());
              },
              icon: Icon(Icons.access_time,color: Color(0xff202020),))
        ],
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

            //ai ontap ta profile a jabe , ata hobena
            GestureDetector(
              onTap: (){
                Get.to(()=>Profile());
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10.h),
                width: double.infinity,
                height: 280.h,
                decoration: BoxDecoration(
                  color: Color(0xffF1F1F1),
                  borderRadius: BorderRadius.circular(15.r)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20.h,),
                    Text("Total Income",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w400),),
                    SizedBox(height: 20.h,),
                    Text("1.50",style: TextStyle(color: Colors.black,fontSize: 25.sp,fontWeight: FontWeight.w700),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/icons/dd.png",width: 25.w,height: 15.h,),
                        SizedBox(width: 5.w,),
                        Text("Your Total Diamond",style: TextStyle(color: Color(0xff0B5F84),fontSize: 15.sp,fontWeight: FontWeight.w400),),
                      ],
                    ),
                    SizedBox(height: 5.w,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                      height: 50.h,
                      padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 15.w),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Image.asset("images/icons/yellowD.png",width: 20.w,height: 20.w,),
                              SizedBox(width: 5.w,),
                              Text("0.50",style: TextStyle(color: Color(0xff0B5F84),fontSize: 15.sp,fontWeight: FontWeight.w400),),

                            ],
                          ),
                          Row(
                            children: [
                              Image.asset("images/icons/blackD.png",width: 20.w,height: 20.w,),
                              SizedBox(width: 5.w,),
                              Text("0.50",style: TextStyle(color: Color(0xff0B5F84),fontSize: 15.sp,fontWeight: FontWeight.w400),),
                              SizedBox(width: 5.w,),
                              Image.asset("images/icons/cart.png",width: 25.w,height: 25.w,),

                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.w,),
                      height: 50.h,
                      padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 15.w),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("images/icons/coin.png",width: 20.w,height: 20.w,),
                          SizedBox(width: 5.w,),
                          Text("0.50",style: TextStyle(color: Color(0xff0B5F84),fontSize: 15.sp,fontWeight: FontWeight.w400),),
                          SizedBox(width: 5.w,),
                          Image.asset("images/icons/arrow.png",width: 25.w,height: 25.w,),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 5.w,),
            TextFormField(
              //controller: controller.textEditingController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Color(0xff808080)),
                hintText: "Search user ID",
                hintStyle: TextStyle(color: Color(0xff808080)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff808080)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff808080)),
                ),
              ),
            ),
            SizedBox(height: 10.w,),



            Obx(()=> Expanded(
             child: ListView.builder(
                 itemCount: controller.user.length,
                 itemBuilder: (context,index){
                   return GestureDetector(
                     onTap: (){
                       Get.defaultDialog(
                         backgroundColor: Colors.white,
                          titlePadding: EdgeInsets.only(top: 20.h),
                          title: "User ID: 555",
                          titleStyle: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w500,color: Color(0xff000000)),

                          content: Padding(
                           padding:  EdgeInsets.symmetric(horizontal: 15.w),
                           child: Column(
                             children: [

                               SizedBox(height: 10.h,),
                               Obx(()=>TextFormField(
                                 controller: tcontroller.textEditingController,
                                 decoration: InputDecoration(
                                   focusedBorder: OutlineInputBorder(
                                     borderSide: BorderSide(
                                       color: Color(0xff808080),
                                     ),
                                     borderRadius: BorderRadius.circular(25.r),
                                   ),
                                   enabledBorder: OutlineInputBorder(
                                     borderSide: BorderSide(
                                       color: Color(0xff808080),
                                     ),
                                     borderRadius: BorderRadius.circular(25.r),
                                   ),
                                   hintText: "Enter diamond",
                                   hintStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500,color: Color(0xff808080)),
                                   filled: true,
                                   fillColor: Colors.white,
                                   prefixIcon: Padding(
                                     padding: const EdgeInsets.only(left: 15.0,),
                                     child: IntrinsicWidth(
                                       child: DropdownButtonHideUnderline(
                                         child: DropdownButton<String>(
                                           value: tcontroller.selectedDiamond.value ,
                                           icon: Icon(Icons.arrow_drop_down,color: Color(0xff0B5F84),size: 35.r,),
                                           items: [
                                             DropdownMenuItem(
                                               value: 'Black Diamond',
                                               child: Row(
                                                 children: [
                                                   Icon(Icons.diamond, color: Colors.black,size: 30.r,),
                                                 ],
                                               ),
                                             ),
                                             DropdownMenuItem(
                                               value: 'Gold Diamond',
                                               child: Row(
                                                 children: [
                                                   Icon(Icons.diamond, color: Colors.amber,size: 30.r,),
                                                 ],
                                               ),
                                             ),
                                           ],
                                           onChanged: (value) {
                                             setState(() {
                                               tcontroller.selectedDiamond.value = value!;
                                             });
                                           },
                                         ),
                                       ),
                                     ),
                                   ),
                                   suffixIcon: Padding(
                                     padding:  EdgeInsets.only(right: 15.w),
                                     child: IconButton(
                                       icon: Image.asset("images/icons/send.png",width: 20.w,height: 20.h,),
                                       onPressed: () {

                                       },
                                     ),
                                   ),
                                 ),
                               ),),
                               SizedBox(height: 15.h,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: [
                                   ElevatedButton(
                                       onPressed: (){
                                         Get.back();
                                       },
                                       child: Text("Cancel",style: TextStyle(color:Colors.black, fontSize: 18.sp,fontWeight: FontWeight.w500),),
                                   style: ButtonStyle(
                                     side: WidgetStatePropertyAll(BorderSide(
                                       color: Colors.black,

                                     )),
                                     shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(25.r)
                                     ))
                                   ),),
                                   ElevatedButton(
                                     onPressed: (){},
                                     child: Text("Send",style: TextStyle(color:Colors.white, fontSize: 18.sp,fontWeight: FontWeight.w500),),
                                     style: ButtonStyle(


                                         side: WidgetStatePropertyAll(BorderSide(
                                           color: Color(0xff0B5F84),

                                         )),
                                         shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(25.r)
                                         )),
                                       backgroundColor: WidgetStatePropertyAll(Color(0xff0B5F84)),
                                       padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 40.w,vertical: 10.h))
                                     ),

                                   ),
                                 ],),

                             ],
                           ),
                         )

                       );
                     },
                     child: SizedBox(
                       child: Column(
                         children: [
                           SizedBox(height: 5.w,),

                           SizedBox(
                             child:Row(
                               children: [
                                 CircleAvatar(
                                   radius: 25.r,
                                   backgroundImage: AssetImage("images/image/smp.png"),
                                 ),
                                 SizedBox(width: 10.sp,),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Row(
                                       children: [
                                         Text(
                                           controller.user[index]["name"],style: TextStyle(color: Color(0xff000000),fontSize: 16.sp,fontWeight: FontWeight.w500,),),
                                         SizedBox(width: 5.sp,),
                                         Image.asset("images/icons/aemo.png",width: 20.w,height: 20.h,),

                                       ],
                                     ),
                                     Text(controller.user[index]["id"]
                                       ,style: TextStyle(color: Color(0xff808080),fontSize: 15.sp,fontWeight: FontWeight.w400,),),

                                   ],
                                 ),

                                 Spacer(),
                                 GestureDetector(
                                     onTap: (){
                                       //  Get.to(HostReq());
                                     },
                                     child: Icon(Icons.arrow_forward_ios_rounded,size: 20.r,color: Color(0xff808080),))
                               ],
                             ),
                           ),
                           SizedBox(height: 5.w,),
                           Divider(color: Colors.grey.withOpacity(.4),),
                         ],
                       ),
                     ),
                   );

                 }),
           ))

          ],
        ),
      ),
    );
  }
}
