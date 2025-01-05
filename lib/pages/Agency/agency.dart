import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'history.dart';

class AgencyController extends GetxController {
  var hostRequests = List.generate(
      2,
          (index) => {
        'userId': '111111',
        'name': 'P Habib Khan',
        'date': '20/02/2024',
      }).obs;

  var withdrawRequests = List.generate(
      3,
          (index) => {
        'userId': 'Tamanna',
        'name': '1234564',
        'date': '15/03/2024',
      }).obs;
}

class Agency extends StatefulWidget {
  @override
  State<Agency> createState() => _AgencyState();
}

class _AgencyState extends State<Agency> with SingleTickerProviderStateMixin {
  final AgencyController controller = Get.put(AgencyController());
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.h),  // Increase height to accommodate the TextFormField
        child: Column(
          children: [
            AppBar(
              actions: [
                IconButton(
                    onPressed: () {
                      Get.to(() => History());
                    },
                    icon: Icon(
                      Icons.access_time,
                      color: Color(0xff202020),
                      size: 22.r,
                    ))
              ],
              centerTitle: true,
              title: Text(
                'Agency',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
              ),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Get.back(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: TextFormField(
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
            ),
            TabBar(
              controller: _tabController,
              labelStyle: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff202020)),
              indicatorColor: Color(0xff808080),
              tabs: [
                Tab(text: 'Host request'),
                Tab(text: 'Withdraw request'),
              ],
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          buildRequestList(controller.hostRequests),
          buildRequestList(controller.withdrawRequests, isWithdrawTab: true),
        ],
      ),
    );
  }

  Widget buildRequestList(RxList<Map<String, String>> requests,
      {bool isWithdrawTab = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 220.h,
          child: Obx(
                () => ListView.builder(
              itemCount: requests.length,
              itemBuilder: (context, index) {
                final request = requests[index];
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
                  decoration: BoxDecoration(
                    color: Color(0xffEBECF0),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25.r,
                          backgroundImage: AssetImage("images/image/smp.png"),
                        ),
                        SizedBox(width: 15.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _tabController.index == 1
                                ? Text(
                              'Tamanna',
                              style: TextStyle(
                                  color: Color(0xff202020),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500),
                            )
                                : Text(
                              'Agent User ID: 111111',
                              style: TextStyle(
                                  color: Color(0xff202020),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5.h),
                            _tabController.index == 1
                                ? Text(
                              'User ID:1234564',
                              style: TextStyle(
                                  color: Color(0xff808080),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            )
                                : Text(
                              'Name: P Habib Khan',
                              style: TextStyle(
                                  color: Color(0xff0B5F84),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 5.h),
                            _tabController.index == 1
                                ? Text(
                              '017***********',
                              style: TextStyle(
                                  color: Color(0xff0B5F84),
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400),
                            )
                                : Text(
                              '20/02/2024',
                              style: TextStyle(
                                  color: Color(0xff808080),
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Spacer(),
                        _tabController.index == 1
                            ? Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("images/icons/coin.png",
                                    width: 20.w, height: 20.w),
                                SizedBox(width: 3.w),
                                Text('1000',
                                    style: TextStyle(
                                        color: Color(0xff202020),
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Text('20/02/2024',
                                style: TextStyle(
                                    color: Color(0xff808080),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400)),
                          ],
                        )
                            : Row(
                          children: [
                            Icon(Icons.close,
                                color: Color(0xff202020), size: 20.r),
                            SizedBox(width: 10.w),
                            Icon(Icons.check,
                                color: Color(0xff202020), size: 20.r),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
