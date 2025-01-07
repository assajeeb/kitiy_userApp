import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordController extends GetxController {
  late TextEditingController textEditingController;

  @override
  void onInit() {
    super.onInit();
    textEditingController = TextEditingController();
  }

  @override
  void onClose() {
    textEditingController.dispose();
    super.onClose();
  }
}

class NewPasswordController extends GetxController {
  late TextEditingController textEditingController;
  var showPass = false.obs;
  var showPass1 = false.obs;

  @override
  void onInit() {
    super.onInit();
    textEditingController = TextEditingController();
  }

  @override
  void onClose() {
    textEditingController.dispose();
    super.onClose();
  }
}

class PasswordChange extends StatefulWidget {
  const PasswordChange({super.key});

  @override
  State<PasswordChange> createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
  final PasswordController passwordController = Get.put(PasswordController());
  final NewPasswordController newPasswordController = Get.put(NewPasswordController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: -10.sp,
        title: Text(
          "Password Change",
          style: TextStyle(
            color: const Color(0xff2B2B2B),
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Type your old password",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff2B2B2B),
              ),
            ),
            SizedBox(height: 10.h),
            TextFormField(
              controller: passwordController.textEditingController,
              decoration: InputDecoration(
                hintText: "Password",
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
              "Type your new password",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff2B2B2B),
              ),
            ),
            SizedBox(height: 10.h),
            Obx(
                  () => TextFormField(
                    obscureText: !newPasswordController.showPass.value,
                controller: newPasswordController.textEditingController,
                decoration: InputDecoration(
                  hintText: "Password",
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
                  suffixIcon: IconButton(
                    icon: Icon(
                      newPasswordController.showPass.value ? Icons.visibility : Icons.visibility_off,
                      color: Color(0xff808080),
                    ),
                    onPressed: () {
                      newPasswordController.showPass.toggle();
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "Confirm your new password",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff2B2B2B),
              ),
            ),
            SizedBox(height: 10.h),
            Obx(()=>TextFormField(
              obscureText: !newPasswordController.showPass1.value,
              decoration: InputDecoration(
                hintText: "Password",
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
                suffixIcon: IconButton(
                  icon: Icon(
                    newPasswordController.showPass1.value ? Icons.visibility : Icons.visibility_off,
                    color: Color(0xff808080),
                  ),
                  onPressed: () {
                    newPasswordController.showPass1.toggle();
                  },
                ),
              ),
            ),),
            SizedBox(height: 25.h,),
            SizedBox(
              width: double.infinity,
              height: 48.h,
              child: ElevatedButton(
                onPressed: (){},
                child: Text("Save change",style: TextStyle(color:Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w400),),
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xff0B5F84) ),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        side: BorderSide(
                            color: Color(0xff0B5F84)
                        ),
                        borderRadius: BorderRadius.circular(5.r)
                    ))

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
