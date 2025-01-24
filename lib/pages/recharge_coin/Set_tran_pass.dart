import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitiy_userapp/pages/recharge_coin/yellowRD.dart';

class EmailController extends GetxController {
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

class PasswordController extends GetxController {
  late TextEditingController textEditingController;
  var showPass = false.obs;

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

class CPasswordController extends GetxController {
  late TextEditingController textEditingController;
  var showPass = false.obs;

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
class DPasswordController extends GetxController {
  late TextEditingController textEditingController;
  var showPass = false.obs;

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

class SetTranPass extends StatefulWidget {
  const SetTranPass({super.key});

  @override
  State<SetTranPass> createState() => _SetTranPassState();
}

class _SetTranPassState extends State<SetTranPass> {
  final EmailController emailController = Get.put(EmailController());
  final PasswordController passwordController = Get.put(PasswordController());
  final CPasswordController cPasswordController = Get.put(CPasswordController());
  final DPasswordController dPasswordController = Get.put(DPasswordController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Set a Transaction Password",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Colors.black),),
            // Email field
            SizedBox(height: 25.h,),
            TextFormField(
              controller: emailController.textEditingController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined, color: Color(0xff0B5F84), size: 20.r),
                hintText: "Enter your email or number",
                hintStyle: TextStyle(
                  color: const Color(0xff0B5F84),
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff808080)),
                  borderRadius: BorderRadius.circular(35.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff808080)),
                  borderRadius: BorderRadius.circular(35.r),
                ),
              ),
            ),
            SizedBox(height: 10.h),

            // Password field
            Obx(
                  () => TextFormField(
                obscureText: !passwordController.showPass.value,
                controller: passwordController.textEditingController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline, color: Color(0xff0B5F84), size: 20.r),
                  hintText: "Enter your password",
                  hintStyle: TextStyle(
                    color: const Color(0xff0B5F84),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff0B5F84)),
                    borderRadius: BorderRadius.circular(35.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff0B5F84)),
                    borderRadius: BorderRadius.circular(35.r),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      passwordController.showPass.value ? Icons.visibility : Icons.visibility_off,
                      color: Color(0xff0B5F84),
                    ),
                    onPressed: () {
                      passwordController.showPass.toggle();
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),

            // Confirm password field
            Obx(
                  () => TextFormField(
                obscureText: !cPasswordController.showPass.value,
                controller: cPasswordController.textEditingController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline, color: Color(0xff0B5F84), size: 20.r),
                  hintText: "Confirm your password",
                  hintStyle: TextStyle(
                    color: const Color(0xff0B5F84),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff0B5F84)),
                    borderRadius: BorderRadius.circular(35.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff0B5F84)),
                    borderRadius: BorderRadius.circular(35.r),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      cPasswordController.showPass.value ? Icons.visibility : Icons.visibility_off,
                      color: Color(0xff0B5F84),
                    ),
                    onPressed: () {
                      cPasswordController.showPass.toggle();
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.h),

            // Confirm button
            SizedBox(
              width: double.infinity,
              height: 48.h,
              child: ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(

                    title: "",
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Obx(
                              () => TextFormField(
                            obscureText: !dPasswordController.showPass.value,
                            controller: dPasswordController.textEditingController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock_outline, color: Color(0xff0B5F84), size: 20.r),
                              hintText: "Enter your password",
                              hintStyle: TextStyle(
                                color: const Color(0xff0B5F84),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff0B5F84)),
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff0B5F84)),
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  dPasswordController.showPass.value ? Icons.visibility : Icons.visibility_off,
                                  color: Color(0xff0B5F84),
                                ),
                                onPressed: () {
                                  dPasswordController.showPass.toggle();
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h,),
                        Text("Forget password",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Color(0xff0B5F84)),),
                        SizedBox(height: 15.h,),
                        SizedBox(
                          width: double.infinity,
                          height: 48.h,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(()=>RedeemBens());

                            },
                            child: Text(
                              "Continue",
                              style: TextStyle(color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.w400),
                            ),
                            style: ButtonStyle(
                              shape:  WidgetStatePropertyAll(RoundedRectangleBorder(
                                side: BorderSide(color: Color(0xff0B5F84)),
                                borderRadius: BorderRadius.circular(25.r),
                              ),),
                              backgroundColor: WidgetStatePropertyAll((Color(0xff0B5F84)),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
                child: Text(
                  "Confirm",
                  style: TextStyle(color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.w400),
                ),
                style: ButtonStyle(
                  shape:  WidgetStatePropertyAll(RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xff0B5F84)),
                  borderRadius: BorderRadius.circular(25.r),
                ),),
                  backgroundColor: WidgetStatePropertyAll((Color(0xff0B5F84)),
                ),
              ),
            ),
            )],
        ),
      ),
    );
  }
}
