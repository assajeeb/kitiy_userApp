import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kitti/screens/groupUserScreenParts/show_group_details.dart';
import 'package:kitti/screens/homeScreenParts/countryPageScrollGroup.dart';
import 'package:kitti/widgets/custom_toggle_button.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({super.key});

  @override
  _GroupPageState createState() => _GroupPageState();
}

  List<Widget> visitedFollow = [
    CountryPageScrollGroup(),
    CountryPageScrollGroup()
  ];

class _GroupPageState extends State<GroupPage> {
  final List<Map<String, dynamic>> gridItems = [
    {
      "id": 12345,
      "img": "assets/groupPage/img1.png",
      "name": "Love's Red...",
      "des": "Everyone is with us..."
    },
    {
      "id": 12346,
      "img": "assets/groupPage/img2.png",
      "name": "Passionate Hues",
      "des": "Together We Rise"
    },
    {
      "id": 12347,
      "img": "assets/groupPage/img3.png",
      "name": "Crimson Embrace",
      "des": "Uniting Hearts"
    },
    {
      "id": 12348,
      "img": "assets/groupPage/img4.png",
      "name": "Ruby Reflections",
      "des": "Strength in Unity"
    },
    {
      "id": 12349,
      "img": "assets/groupPage/img1.png",
      "name": "Scarlet Symphony",
      "des": "A Bond Unbreakable"
    },
    {
      "id": 12350,
      "img": "assets/groupPage/img2.png",
      "name": "Vermillion Dreams",
      "des": "Celebrating Togetherness"
    }
  ];

  // State variable to track which widget to display
  int _selectedWidgetIndex = 0;

  @override
  Widget build(BuildContext context) {
    gridItems.shuffle();
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10.h, bottom: 5.h, left: 10.w),
          width: double.infinity,
          child: Text(
            "My Group",
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.black,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF1A1636),
          ),
          height: 100.h, // Set a height for the horizontal slider
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: gridItems.length, // Add itemCount
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ShowGroupDetails(gridItems[index]["id"])));
                },
                child: Container(
                  width: 90.w,
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.w),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.asset(
                          "${gridItems[index]['img']}",
                          height: 60.h,
                          width: 90.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 45.h,
                        right: 5.w,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 4.w,
                            vertical: 1.h,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.5),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: Text(
                            "ID: ${gridItems[index]['id']}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.sp,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Column(
                          children: [
                            Text(
                              "${gridItems[index]['name']}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.sp,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "${gridItems[index]['des']}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8.sp,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),

        // Buttons to toggle widgets
        Container(
          padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
          decoration: BoxDecoration(
            color: const Color(0xFF1A1636),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomToggleButton(
                label: "Visited",
                isActive: _selectedWidgetIndex == 0,
                onTap: () {
                  setState(() {
                    _selectedWidgetIndex = 0;
                  });
                },
              ),
              SizedBox(width: 14.w),
              CustomToggleButton(
                label: "Follow",
                isActive: _selectedWidgetIndex == 1,
                onTap: () {
                  setState(() {
                    _selectedWidgetIndex = 1;
                  });
                },
              ),
            ],
          ),
        ),

        // Expanded widget to display selected content
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF1A1636),
            ),
            child: Center(
              child: visitedFollow[_selectedWidgetIndex]
            ),
          ),
        ),
      ],
    );
  }
}
