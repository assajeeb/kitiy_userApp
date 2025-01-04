import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kitti/screens/create_group.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectIndex = 0;
  void _onTabTapped(index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Container(
          child: Image.asset("assets/icons/profile.png"),
        ),
        centerTitle: false,
        actions: [
          Container(
            width: 40.w,
            height: 40.h,
            child: Image.asset("assets/icons/group.png"),
          ),
          SizedBox(
            width: 15.w,
          ),
          Container(width: 40.w, height: 40.h, child: Icon(Icons.home)),
          SizedBox(
            width: 15.w,
          ),
          Container(
            width: 40.w,
            height: 40.h,
            child: Image.asset("assets/icons/message.png"),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 226.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildTab("Recommand", 0),
                      _buildTab("Popular", 1),
                      _buildTab("Country", 2),
                    ],
                  ),
                ),
                Container(
                  width: 100.w,
                  child: Row(
                    children: [
                      Container(
                        width: 30.w,
                        height: 40.h,
                        child: Image.asset("assets/icons/mask.png"),
                      ),
                      Container(
                        width: 30.w,
                        height: 40.h,
                        child: Image.asset("assets/icons/bell.png"),
                      ),
                      Container(
                        width: 30.w,
                        height: 40.h,
                        child: Image.asset("assets/icons/group1.png"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: widgetList[_selectIndex]),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(5.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PopupMenuButton<int>(
              position: PopupMenuPosition.over,
              child: Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.r),
                ),
                child: Icon(Icons.add, size: 25.h, color: Colors.black),
              ),
              itemBuilder: (context) => [
                // Popup menu item 1
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(Icons.star),
                      SizedBox(width: 10),
                      Text("Create Group"),
                    ],
                  ),
                ),
                // Popup menu item 2
                PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: [
                      Icon(Icons.chrome_reader_mode),
                      SizedBox(width: 10),
                      Text("Feedback"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Row(
                    children: [
                      Icon(Icons.chrome_reader_mode),
                      SizedBox(width: 10),
                      Text("Contact Us"),
                    ],
                  ),
                ),
              ],
              onSelected: (value) {
                if (value == 1) {
                  Get.to(CreateGroup());
                } else if (value == 2) {
                  print("About selected");
                }
              },
              offset: Offset(0, 100),
              elevation: 2,
            ),
            Icon(Icons.search, size: 30.h, color: Colors.black),
          ],
        ),
      ),
    ));
  }

  List<Widget> widgetList = [
    RecommandedWidget(),
    RecommandedWidget(),
    CountryWidget()
  ];

  Widget _buildTab(String title, int index) {
    bool isSelected = _selectIndex == index;

    return GestureDetector(
      onTap: () => _onTabTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              color: isSelected ? Colors.blue : Colors.grey,
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            margin: EdgeInsets.only(top: 4),
            height: 3,
            width: isSelected ? 50 : 0,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class RecommandedWidget extends StatelessWidget {
  List<Map<String, dynamic>> recommandedList = [
    {
      "title": "প্রেম হবে Vs বিয়ে হবে",
      "status": "গানে গানে আড্ডা",
      "img": "assets/user11.png",
    },
    {
      "title": "প্বিন্দাস লাইফ",
      "status": "গানে গানে আড্ডা",
      "img": "assets/user2.png",
    },
    {
      "title": "ƊЄƑƛƲԼƬЄƦ ƓƖƦԼ",
      "status": "গানে গানে আড্ডা",
      "img": "assets/user3.png",
    },
    {
      "title": "🌸আমি একান্তই আমার🌸",
      "status": "গানে গানে আড্ডা",
      "img": "assets/user3.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: recommandedList.length,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
              width: 320.w,
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
              child: Row(
                children: [
                  // Left Side
                  Container(
                    width: 203.w,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40.w,
                              height: 40.h,
                              child: Image.asset(
                                  "${recommandedList[index]['img']}"),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              child: Text(
                                "${recommandedList[index]['status']}",
                                style: TextStyle(
                                    fontSize: 12.sp, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "প্রেম হবে Vs বিয়ে হবে",
                                style: TextStyle(
                                    fontSize: 12.sp, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          height: 50.h,
                          child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Stack(
                                  children: [
                                    SizedBox(
                                        width: 40.w,
                                        height: 40.h,
                                        child: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 5.w),
                                            child: Image.asset(
                                                "assets/user1.png"))),
                                    Positioned(
                                        child: Image.asset("assets/group.png"))
                                  ],
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  // Right side
                  Container(
                    width: 83.w,
                    child: Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                                width: 81.w,
                                height: 75.h,
                                margin: EdgeInsets.symmetric(horizontal: 5.w),
                                child: Image.asset(
                                  "${recommandedList[index]['img']}",
                                  width: 80.w,
                                  height: 75.h,
                                  fit: BoxFit.fill,
                                )),
                            Positioned(
                                bottom: -5.h,
                                left: 15.w,
                                right: 15.w,
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 50.w,
                                  // padding: EdgeInsets.symmetric(
                                  //     horizontal: 5.w, vertical: 5.h),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    //   border: Border.all(width: 0.5.w),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "RM Rank",
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                            width: 70.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 0.5.w),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    "Now16",
                                    style: TextStyle(
                                      color: Color(0xff2B2B2B),
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Container(
                                    child: Icon(
                                  Icons.person,
                                  size: 15.h,
                                ))
                              ],
                            ))
                      ],
                    ),
                  )
                ],
              )),
        );
      },
    );
  }
}

class PopularWidget extends StatelessWidget {
  const PopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          child: Text("User 1"),
        );
      },
    );
  }
}

class CountryWidget extends StatelessWidget {
  List<Map<String, dynamic>> countryList = [
    {"name": "Bangladesh", "img": "assets/bn.png"},
    {"name": "India", "img": "assets/in.png"},
    {"name": "Indonesia", "img": "assets/ind.png"},
    {"name": "Pakistan", "img": "assets/pak.png"},
    {"name": "America", "img": "assets/en.png"},
    {"name": "Thailand", "img": "assets/tha.png"}
  ];
  List<Map<String, dynamic>> gridItems = [
    {
      "name": "কয়েন রিচার্জ রুম",
      "des": "Wellcome my all friends",
      "img": "assets/pic1.png",
      "id": 1234
    },
    {
      "name": "✿ƊЄƑƛƲƬЄƦƓ ...",
      "des": "Wellcome my all friends",
      "img": "assets/pic2.png",
      "id": 1234
    },
    {
      "name": "SL- Sweet Love a...",
      "des": "আসো সবাই আদা দেই",
      "img": "assets/pic3.png",
      "id": 1234
    },
    {
      "name": "বি-বাড়িয়া আড্ডা ম...",
      "des": "Wellcome! Please abide...",
      "img": "assets/pic4.png",
      "id": 1234
    },
    {
      "name": "কয়েন রিচার্জ রুম",
      "des": "Wellcome my all friends",
      "img": "assets/pic1.png",
      "id": 1234
    },
    {
      "name": "কয়েন রিচার্জ রুম",
      "des": "Wellcome my all friends",
      "img": "assets/pic2.png",
      "id": 1234
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 25.h,
              width: 25.w,
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              child: Image.asset(
                "assets/icons/earth2.png",
                width: 25.w,
                height: 25.h,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              "Rajshahi, Dhaka, Bangladesh",
              style: TextStyle(
                  fontSize: 15.sp,
                  color: Color(0xff2B2B2B),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Container(
          height: 80.h,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: countryList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 60.h,
                    width: 55.w,
                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Image.asset(
                      "${countryList[index]['img']}",
                      width: 55.w,
                      height: 60.h,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Text(
                    "${countryList[index]['name']}",
                    style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  )
                ],
              );
            },
          ),
        ),
        Expanded(
          child: Container(
            color: const Color(0xff1a1636),
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.h,
                crossAxisSpacing: 10.w,
                childAspectRatio: 0.95, // Adjusted aspect ratio for better height
              ),
              itemCount: gridItems.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF2B2E4A), // Card background color
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            // Main Image
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "${gridItems[index]['img']}",
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                              ),
                            ),
                            // Bottom-Right ID within the image
                            Positioned(
                              bottom: 8.h,
                              right: 8.w,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.w, vertical: 2.h),
                                decoration: BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.4),
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                child: Text(
                                  "ID: ${gridItems[index]['id']}",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            // Top-Left Badge
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.w, vertical: 4.h),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/icons/vip.png",
                                      width: 12.w,
                                      height: 12.h,
                                    ),
                                    SizedBox(width: 4.w),
                                    Text(
                                      "SVIP${index + 1}",
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Top-Right Text with Blur and Rounded Background
                            Positioned(
                              top: 8.h,
                              right: 8.w,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.w, vertical: 2.h),
                                decoration: BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.3),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  "11",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 6.h),
                      // Title Text
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Text(
                          "${gridItems[index]['name']}",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      // Subtitle Text
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Text(
                          "Wellcome my all friends",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                      SizedBox(height: 8.h),
                    ],
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
