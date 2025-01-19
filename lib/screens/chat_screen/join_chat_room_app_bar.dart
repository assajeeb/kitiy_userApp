// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//
// import '../join_group_tootls.dart';
//
// class JoinChatRoomAppBar extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return   Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage("assets/bg.png"),
//                 fit: BoxFit.fill)),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 10.h,
//             ),
//             Container(
//               width: 390.w,
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(colors: [
//                     Color(0xff041E43),
//                     Color(0xff0D111C),
//                   ])),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Get.to(JoinGroupTools());
//                     },
//                     child: Container(
//                       width: 170.w,
//                       height: 55.h,
//                       decoration: BoxDecoration(
//                           color: Color(0xff3D4456),
//                           borderRadius: BorderRadius.circular(10.r)),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             width: 25.w,
//                             height: 25.h,
//                             child: Image.asset("assets/user11.png"),
//                           ),
//                           SizedBox(
//                             width: 10.w,
//                           ),
//                           Column(
//                             mainAxisAlignment:
//                             MainAxisAlignment.center,
//                             crossAxisAlignment:
//                             CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 child: Text(
//                                   "꧁DOSTI💖TAK꧂",
//                                   style: TextStyle(
//                                       fontSize: 12.sp,
//                                       color: Colors.white),
//                                 ),
//                               ),
//                               Container(
//                                 child: Text(
//                                   "ID: 1215411",
//                                   style: TextStyle(
//                                       fontSize: 12.sp,
//                                       color: Color(0xff9198AA)),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       _showOnlinePeople(context);
//                     },
//                     child: Container(
//                       width: 68.w,
//                       height: 20.h,
//                       decoration: BoxDecoration(
//                           color: Color(0xff3D4456),
//                           borderRadius: BorderRadius.circular(16.r)),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             width: 15.w,
//                             height: 15.h,
//                             child: Image.asset(
//                               "assets/icons/user_icon.png",
//                               color: Colors.white,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 5.w,
//                           ),
//                           Container(
//                             child: Text(
//                               "25",
//                               style: TextStyle(
//                                 fontSize: 12.sp,
//                                 fontWeight: FontWeight.w400,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       Get.to(CreateRoomPage());
//                     },
//                     child: Container(
//                         width: 80.w,
//                         height: 20.h,
//                         child: ListView(
//                           scrollDirection: Axis.horizontal,
//                           padding:
//                           EdgeInsets.symmetric(horizontal: 10.h),
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(3.0),
//                               child: Image.asset(
//                                 "assets/icons/dot1.png",
//                                 color: Colors.white,
//                                 width: 7.w,
//                                 height: 7.h,
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(3.0),
//                               child: Image.asset(
//                                 "assets/icons/dot1.png",
//                                 color: Colors.white,
//                                 width: 9.w,
//                                 height: 9.h,
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(3.0),
//                               child: Image.asset(
//                                 "assets/icons/dot1.png",
//                                 color: Colors.white,
//                                 width: 7.w,
//                                 height: 7.h,
//                               ),
//                             ),
//                           ],
//                         )),
//                   ),
//                   Container(
//                     width: 20.w,
//                     height: 20.h,
//                     child: Image.asset(
//                       "assets/icons/poweroff.png",
//                       color: Colors.white,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Container(
//                   margin: EdgeInsets.only(left: 10.w),
//                   width: 169.w,
//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(colors: [
//                         Color(0xff041E43),
//                         Color(0xff0D111C),
//                       ])),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         width: 68.w,
//                         height: 20.h,
//                         decoration: BoxDecoration(
//                             color: Color(0xff3D4456),
//                             borderRadius:
//                             BorderRadius.circular(16.r)),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               width: 15.w,
//                               height: 15.h,
//                               child: Image.asset(
//                                   "assets/icons/dimond.png"),
//                             ),
//                             SizedBox(
//                               width: 5.w,
//                             ),
//                             Container(
//                               child: Text(
//                                 "451",
//                                 style: TextStyle(
//                                     fontSize: 12.sp,
//                                     color: Color(0xff9198AA)),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         width: 94.w,
//                         height: 20.h,
//                         decoration: BoxDecoration(
//                             color: Color(0xff3D4456),
//                             borderRadius:
//                             BorderRadius.circular(16.r)),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               width: 15.w,
//                               height: 15.h,
//                               child: Image.asset(
//                                   "assets/icons/record.png"),
//                             ),
//                             SizedBox(
//                               width: 5.w,
//                             ),
//                             Container(
//                               child: Text(
//                                 "451",
//                                 style: TextStyle(
//                                     fontSize: 12.sp,
//                                     color: Color(0xff9198AA)),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   )),
//             ),
//             SizedBox(
//               height: 10.h,
//             ),
//             Container(
//                 width: double.infinity.w,
//                 padding: EdgeInsets.only(right: 15.w),
//                 decoration: BoxDecoration(),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Container(
//                       width: 40.w,
//                       height: 39.h,
//                       padding: EdgeInsets.all(5.w),
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(30.r),
//                               bottomLeft: Radius.circular(30.r)),
//                           gradient: LinearGradient(colors: [
//                             Color(0xffEE7F14),
//                             Color(0xffFBA106)
//                           ])),
//                       child: Image.asset(
//                         "assets/u1.png",
//                         width: 28.w,
//                         height: 28.h,
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                     Container(
//                       width: 148.w,
//                       height: 39.h,
//                       padding: EdgeInsets.all(5.w),
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(30.r),
//                               bottomRight: Radius.circular(30.r)),
//                           gradient: LinearGradient(colors: [
//                             Color(0xff71391D),
//                             Color(0xff8E623A),
//                             Color(0xff745A42),
//                             Color(0xff5D524C)
//                           ])),
//                       child: Row(
//                         mainAxisAlignment:
//                         MainAxisAlignment.spaceBetween,
//                         children: [
//                           Image.asset(
//                             "assets/car.png",
//                             width: 35.w,
//                             height: 35.h,
//                             fit: BoxFit.cover,
//                           ),
//                           Container(
//                             child: Text(
//                               "X",
//                               style: TextStyle(
//                                   fontSize: 14.sp,
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.white),
//                             ),
//                           ),
//                           Container(
//                             child: Text(
//                               "10",
//                               style: TextStyle(
//                                   fontSize: 14.sp,
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.white),
//                             ),
//                           ),
//                           Image.asset(
//                             "assets/u1.png",
//                             width: 25.w,
//                             height: 25.h,
//                             fit: BoxFit.cover,
//                           ),
//                           Container(
//                             child: Text(
//                               "60s",
//                               style: TextStyle(
//                                   fontSize: 14.sp,
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.white),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 )),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Container(
//                   height: 50.w,
//                   width: 170.w,
//                   alignment: Alignment.centerRight,
//                   child: ListView.builder(
//                       itemCount: userList.length,
//                       scrollDirection: Axis.horizontal,
//                       itemBuilder: (context, index) {
//                         return ClipRRect(
//                           child: Padding(
//                             padding: const EdgeInsets.all(2.0),
//                             child: Image.asset(
//                               "${userList[index]['img']}",
//                               height: 30.h,
//                               width: 30.w,
//                             ),
//                           ),
//                         );
//                       }),
//                 ),
//               ],
//             ),
//           ],
//         ));
//   }
// }
