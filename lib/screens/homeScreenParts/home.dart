import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kitti/screens/homeScreenParts/countryPageScrollGroup.dart';

class CreateGroupWidget extends StatefulWidget {
  const CreateGroupWidget({super.key});

  @override
  State<CreateGroupWidget> createState() => _CreateGroupWidgetState();
}

class _CreateGroupWidgetState extends State<CreateGroupWidget> {
  List<Widget> widgetList = [
    RecommandedWidget(),
    RecommandedWidget(),
    CountryWidget()
  ];

  int _selectIndex = 0;

  void _onTabTapped(index) {
    setState(() {
      _selectIndex = index;
    });
  }


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
              fontSize: 15.sp,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.w400,
              color: isSelected ? Colors.blue : Colors.grey,
              fontFamily: "Microsoft Sans Serif"
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 246.w,
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
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 20.0,
        childAspectRatio: 2.7
      ),
      padding: EdgeInsets.symmetric(vertical: 20.0),
      itemCount: recommandedList.length,
      itemBuilder: (context, index) {
        return Container(
            width: 320.w,
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withValues(alpha: 0.3),
                    offset: Offset(0.0, 0.0),
                    blurRadius: 10,
                    blurStyle: BlurStyle.normal
                )
              ],
              borderRadius: BorderRadius.circular(10.r)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left Side
                SizedBox(
                  width: 203.w,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 40.w,
                            height: 40.h,
                            child: Image.asset(
                                "${recommandedList[index]['img']}"),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "${recommandedList[index]['status']}",
                            style: TextStyle(
                                fontSize: 12.sp, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "প্রেম হবে Vs বিয়ে হবে",
                            style: TextStyle(
                                fontSize: 12.sp, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      SizedBox(

                        height: 40.h,
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
                SizedBox(
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
            ));
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
            child: CountryPageScrollGroup(),
          ),
        ),
      ],
    );
  }
}




