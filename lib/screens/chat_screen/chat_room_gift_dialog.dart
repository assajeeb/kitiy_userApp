import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/custom_text.dart';

void showCustomBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(),
    builder: (context) {
      return BottomSheetWithTabs();
    },
  );
}

class BottomSheetWithTabs extends StatefulWidget {
  @override
  _BottomSheetWithTabsState createState() => _BottomSheetWithTabsState();
}

class _BottomSheetWithTabsState extends State<BottomSheetWithTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      width: 430.w,
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.blue,
            indicatorWeight: 3,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'Recent'),
              Tab(text: 'Hot'),
              Tab(text: 'SVIP'),
              Tab(text: 'Nobel'),
              Tab(text: 'Package'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10.h),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              height: 40.h,
                              width: 40.w,
                              child: Image.asset("assets/chatroom/gift.png"),
                            ),
                            SizedBox(height: 3.h),
                            CustomText(
                              title: "Pink rose",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(height: 3.h),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 15.h,
                                    width: 25.w,
                                    child: Image.asset(
                                      "assets/chatroom/pinkrose.png",
                                      height: 15.h,
                                      width: 25.w,
                                    ),
                                  ),
                                  SizedBox(height: 5.w),
                                  Container(
                                    child: CustomText(
                                      title: "500",
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin:  EdgeInsets.only(bottom: 10.h, right: 15.w, left: 15.w ),

            child: Row(
mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(

                  height: 35.h,
                  child: Stack(
                    // alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      // First button
                      Container(

                        width: 230.w,
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        decoration: BoxDecoration(
                          color: Color(0xffF1F1F1),
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Row(
                          children: [
                            Positioned(
                              left: 0.w,
                              child: Container(
                                  height: 35.h,
                                  child: CircleAvatar(
                                    radius: 20.r,
                                    child: Image.asset(
                                      "assets/chatroom/u30.png",
                                    ),
                                  )),
                            ),
                            Positioned(
                              left: -5.w,
                              child: Container(
                                  height: 35.h,
                                  child: CircleAvatar(
                                    radius: 20.r,
                                    child: Image.asset(
                                      "assets/chatroom/u29.png",
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            CustomText(
                              title: "Send 10 People",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            InkWell(
                              onTap: (){
                                _showSelectPeople(context);
                              },
                                child: Icon(Icons.arrow_downward))
                          ],
                        ),
                      ),

                      // Second button that overlaps
                    ],
                  ),
                ),
                Container(
                  height: 35.h,
                  width: 100.w,
                  child: Stack(
                    // alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      // First button
                      Container(
                        height: 35.h,
                        width: 91.w,
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        decoration: BoxDecoration(
                          color: Color(0xffF1F1F1),
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Row(
                          children: [
                            CustomText(
                              title: "50",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Icon(Icons.arrow_downward)
                          ],
                        ),
                      ),

                      // Second button that overlaps
                      Positioned(
                        right: -50.w,
                        child: Container(
                          height: 35.h,
                          width: 91.w,
                          decoration: BoxDecoration(
                            color: Color(0xff6053D0),
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          child: Center(
                              child: CustomText(
                            title: "Send",
                            fontSize: 15.sp,
                            textColor: Colors.white,
                            fontWeight: FontWeight.normal,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}







void _showSelectPeople(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => SelectionBottomSheet(),
  );
}

class SelectionBottomSheet extends StatefulWidget {
  const SelectionBottomSheet({super.key});

  @override
  _SelectionBottomSheetState createState() => _SelectionBottomSheetState();
}

class _SelectionBottomSheetState extends State<SelectionBottomSheet> {
  // Data list
  List<Map<String, dynamic>> users = [
    {"name": "Habib Khan", "selected": false},
    {"name": "Habib Khan", "selected": false},
    {"name": "Habib Khan", "selected": false},
    {"name": "Habib Khan", "selected": false},
  ];

  // Check if all items are selected
  bool isSelectAll = false;

  void toggleSelectAll() {
    setState(() {
      isSelectAll = !isSelectAll;
      for (var user in users) {
        user['selected'] = isSelectAll;
      }
    });
  }

  void toggleSelection(int index) {
    setState(() {
      users[index]['selected'] = !users[index]['selected'];
      isSelectAll = users.every((user) => user['selected']);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Select All Row
          ListTile(
            title: Text("Select All"),
            trailing: Checkbox(
              value: isSelectAll,
              onChanged: (value) => toggleSelectAll(),
            ),
          ),
          Divider(),
          // User List
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6, // Set height for the bottom sheet
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                    AssetImage('assets/profile.png'), // Replace with your image asset
                  ),
                  title: Text(users[index]['name']),
                  trailing: Checkbox(
                    value: users[index]['selected'],
                    onChanged: (value) => toggleSelection(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
