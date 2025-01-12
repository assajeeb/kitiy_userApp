import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitiy_userapp/pages/room_profile/profile_edit_Controller.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {

  ProfileEditController profileEditController=Get.put(ProfileEditController());
  ProfileEditController1 profileEditController1=Get.put(ProfileEditController1());
  ProfileEditController2 profileEditController2=Get.put(ProfileEditController2());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height: 25.h,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            height: 288.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
                image: DecorationImage(

                    image: AssetImage("images/image/rcImg.png"),fit: BoxFit.cover)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 15.w,top: 5.h),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: (){
                            Get.back();

                          },
                          icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 25.r,)),
                      Text("Adhora",style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500,color: Colors.white),),


                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 30.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      SizedBox(height: 30.sp,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Upload cover photo",style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.w400,color: Colors.white
                          ),),
                          SizedBox(width: 8.w,),
                          Image.asset("images/icons/photo.png",width: 25.w,height: 25.w,)
                        ],
                      ),
                      SizedBox(height: 30.sp,),
                      Stack(
                        children:[

                          CircleAvatar(
                          radius: 50.r,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 47.r,
                            backgroundImage: AssetImage("images/image/smp.png"),
                          ),

                        ),

                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              radius: 15.5.r,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 14.r,
                                backgroundColor: Color(0xffCE952A),
                                child: Icon(Icons.camera_alt,color: Colors.white,size: 15.r,),
                              ),



                            ),
                          )
                        ]
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
         Padding(
           padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 "Name",
                 style: TextStyle(
                   fontSize: 18.sp,
                   fontWeight: FontWeight.w400,
                   color: const Color(0xff0B5F84),
                 ),
               ),
               SizedBox(height: 10.h),
               TextFormField(
                 controller: profileEditController.textEditingController,
                 decoration: InputDecoration(
                   hintText: "Enter your name",
                   hintStyle: TextStyle(
                     color: const Color(0xff808080),
                     fontSize: 18.sp,
                     fontWeight: FontWeight.w400,
                   ),
                   enabledBorder: const OutlineInputBorder(
                     borderSide: BorderSide(color: Color(0xff808080)),
                   ),
                   focusedBorder: const OutlineInputBorder(
                     borderSide: BorderSide(color: Color(0xff808080)),
                   ),
                 ),
               ),
               SizedBox(height: 10.h),
               Text(
                 "Location",
                 style: TextStyle(
                   fontSize: 18.sp,
                   fontWeight: FontWeight.w400,
                   color: const Color(0xff0B5F84),
                 ),
               ),
               SizedBox(height: 10.h),
               TextFormField(
                 controller: profileEditController1.textEditingController,
                 decoration: InputDecoration(
                   hintText: "Select your country",
                   hintStyle: TextStyle(
                     color: const Color(0xff808080),
                     fontSize: 18.sp,
                     fontWeight: FontWeight.w400,
                   ),
                   suffixIcon: GestureDetector(
                       onTap: (){
                         showCountryPicker(
                           context: context,
                           showPhoneCode: false, // set to true to show phone codes
                           onSelect: (Country country) {
                             setState(() {
                               profileEditController1.textEditingController.text = country.name;
                             });
                           },
                         );
                       },
                       child: Icon(Icons.arrow_forward_ios_rounded,color:Color(0xff6F6F6F) ,size: 20.r,)),
                   enabledBorder: const OutlineInputBorder(
                     borderSide: BorderSide(color: Color(0xff808080)),
                   ),
                   focusedBorder: const OutlineInputBorder(
                     borderSide: BorderSide(color: Color(0xff808080)),
                   ),
                 ),
               ),
               SizedBox(height: 10.h),
               Text(
                 "Bio",
                 style:  TextStyle(
                   fontSize: 18.sp,
                   fontWeight: FontWeight.w400,
                   color: const Color(0xff0B5F84),
                 ),
               ),
               SizedBox(height: 10.h),
               TextFormField(
                 maxLines: 2,
                 controller: profileEditController2.textEditingController,
                 decoration: InputDecoration(

                   enabledBorder: const OutlineInputBorder(
                     borderSide: BorderSide(color: Color(0xff808080)),
                   ),
                   focusedBorder: const OutlineInputBorder(
                     borderSide: BorderSide(color: Color(0xff808080)),
                   ),
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
