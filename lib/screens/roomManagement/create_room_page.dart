
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kitti/util/colors.dart';
import 'package:kitti/widgets/custom_text.dart';

final Map<String, String> data = {
  "diamond": "assets/mng_room/diamond.png",
  "gift":"assets/mng_room/gift.png",
  "room_name": "আজাইরা গপ্পো",
  "group_name":"꧁DOSTI💖TAK꧂",
  "profile_pic": "assets/mng_room/prof.png",
  "room_pic":"assets/mng_room/group_photo.png"
};
final List<Map<String, String>> members  = [
  {
    "name": "Stylish boy",
    "image": "assets/mng_room/lb1.png"
  },

  {
    "name": "Stylish boy",
    "image": "assets/mng_room/lb2.png"
  },
  {
    "name": "3",
    "image": "assets/mng_room/lb3.png"
  },
  {
    "name": "4",
    "image": "assets/mng_room/lb4.png"
  },
  {
    "name": "5",
    "image": "assets/mng_room/lb5.png"
  },
];

class CreateRoomPage extends StatefulWidget {
   CreateRoomPage({super.key});

  @override
  State<CreateRoomPage> createState() => _CreateRoomPageState();
}

class _CreateRoomPageState extends State<CreateRoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios, // Replace with your preferred icon
            color: Colors.white, // Set icon color
            size: 16.0, // Adjust icon size
          ),
          onPressed: () {
            Navigator.of(context).pop(); // Handle back navigation
          },
        ),
        toolbarHeight: 40.0,
        backgroundColor: const Color(0xff041E43),
        title: Text(
          "Manage Room",
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(

              height: 160.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: const Color(0xff041E43),
                    height: 50.h,
                    padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.3),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Row(
                            spacing: 10.0,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 30.h,
                                height: 30.h,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(width: 1.0, color: Colors.white)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  clipBehavior: Clip.hardEdge,
                                  child: Image.asset(
                                    "${data['profile_pic']}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${data["group_name"]}",
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white
                                    ),
                                  ),
                                  Text(
                                    "ID: 123456",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.white.withValues(alpha: 0.6)
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Row(
                            spacing: 5.0,
                            children: [
                              Container(
                                padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    color: Colors.white.withValues(alpha: 0.3)
                                ),
                                child: Row(
                                  spacing: 4.0,
                                  children: [
                                    Icon(
                                      CupertinoIcons.profile_circled,
                                      color: Colors.white,
                                      size: 14.0,
                                    ),
                                    Text(
                                      "25",
                                      style: TextStyle(
                                          color: Colors.white,
                                        fontSize: 14.0
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(
                                  CupertinoIcons.power,
                                  size: 24.0,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              color: const Color(0xff041E43),
                            ),
                            child: Row(
                              spacing: 6.0,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      color: Colors.white.withValues(alpha: 0.3)
                                  ),
                                  child: Row(
                                    spacing: 4.0,
                                    children: [
                                      Image.asset(
                                        "${data["diamond"]}",
                                        height: 16.0,
                                      ),
                                      Text(
                                        "451",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.0
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      color: Colors.white.withValues(alpha: 0.3)
                                  ),
                                  child: Row(
                                    spacing: 4.0,
                                    children: [
                                      Image.asset(
                                        "${data["gift"]}",
                                        height: 16.0,
                                      ),
                                      Text(
                                        "Record",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.0
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ),
                          SizedBox(height: 70.h,)
                        ],
                      ),
                      Positioned(
                        height: 70.h,
                        right: 10.0,
                        top: 20.0,
                        child: SizedBox(
                          height: 70.h,
                          child: Column(
                            spacing: 10.0,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 30.0,
                                width: 150.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFF71391D), // #71391D
                                      Color(0xFF8E623A), // #8E623A
                                      Color(0xFF745A42), // #745A42
                                      Color(0xFF5D524C), // #5D524C
                                    ],
                                    stops: [0.0, 0.33, 0.66, 1.0], // Adding stop positions for each color
                                  ),
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      color: Colors.orange,
                                      padding: EdgeInsets.all(3.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(99.0),
                                        clipBehavior: Clip.hardEdge,
                                        child: Image.asset(
                                          "${data['profile_pic']}",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                      child: Image.asset(
                                        "assets/mng_room/carr.png",
                                      ),
                                    ),
                                    Text(
                                      "X 10",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(99.0),
                                      clipBehavior: Clip.hardEdge,
                                      child: Image.asset(
                                        "${data['profile_pic']}",
                                        fit: BoxFit.cover,
                                        width: 20.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Text(
                                        "60s",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.sp
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              Container(
                                height: 25.h,
                                width: 150.w,
                                margin: EdgeInsets.only(bottom: 5.h),
                                child: Row(
                                  spacing: 4.w,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: members.map((item) {
                                    return SizedBox(
                                      height: 25.h,
                                      width: 25.w,
                                      child: ClipRRect(

                                        borderRadius: BorderRadius.circular(30.0),
                                        child: Image.asset(
                                            item['image']!
                                        ),

                                      ),
                                    );
                                  }).toList(),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ]
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      spacing: 10.0,

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: members.map((item) {
                        return SizedBox(
                          height: 70.0,
                          width: 50.0,
                          child: Column(
                            spacing: 6.0,
                            children: [
                              ClipRRect(

                                borderRadius: BorderRadius.circular(30.0),
                                child: Image.asset(
                                    item['image']!,
                                  height: 50.0,
                                  width: 50.0,
                                ),

                              ),
                              Text(
                                  item["name"]!,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp
                                ),
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
              [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 80.h,
                    width: 80.h,
                    child: Stack(
                      children: [
                        ClipRRect(
                          clipBehavior: Clip.hardEdge,
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            "assets/mng_room/group_photo.png",
                            height: 70.h,
                            width: 70.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          right: 0.0,
                          bottom: 0.0,
                          child: GestureDetector(
                            onTap: (){
                              _selectImage(context);
                            },
                            child: Container(
                              height: 25.0,
                              width: 25.0,
                              padding: EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Colors.white
                                  ),
                                  color: AppColors.goldColor,
                                  borderRadius: BorderRadius.circular(30.0)
                              ),
                              child: Icon(
                                CupertinoIcons.camera_fill,
                                size: 15.0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                    height: 80.h,
               alignment: Alignment.topRight,
                  child: Image.asset("assets/chatroom/cross.png", height: 30.h,
                  width: 30.h, color: Color(0xffAAABB0),))
              ],),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(

                          height: 46.h,
                         width: 360.w,
                     alignment: Alignment.centerLeft,

                          decoration: BoxDecoration(
                              color: Color(0xffECECEE)
                          ),
                          child: TextFormField(

                            decoration: InputDecoration(

                              hintText: " আজাইরা গপ্পো",
                              border: InputBorder.none,

                            ),
                          ),

                        ),
                      Container(
                        width: 30.h,
                        height: 46.h,
                        padding: EdgeInsets.only(right: 10.w),

                        decoration: BoxDecoration(
                            color: Color(0xffECECEE)
                        ),
                        child: Image.asset("assets/chatroom/edit.png",
                          color: Colors.black,
                          height: 46.h,
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 10.h),
                  Padding(
                    padding:  EdgeInsets.only(left:10.w),
                    child: CustomText(title: 'Room Tag',
                    fontSize: 16.sp, fontWeight: FontWeight.w700,
                    ),
                  ),
                   SizedBox(height: 10.h),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // Number of columns
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 2.5, // Adjust this for button size
                      ),
                      itemCount: tags.length,
                      itemBuilder: (context, index) {
                        final tag = tags[index];
                        final isSelected = selectedTag == tag;

                        return SizedBox(
                          width: 100.w,
                          height: 27.h,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                              isSelected ? Colors.amber : Colors.white,
                              side: BorderSide(
                                color: isSelected ? Colors.amber : Colors.teal,
                                width: 1.5,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              foregroundColor:
                              isSelected ? Colors.white : Colors.teal,
                              padding: const EdgeInsets.symmetric(vertical: 8),
                            ),
                            onPressed: () {
                              setState(() {
                                selectedTag = tag; // Update the selected tag
                              });
                            },
                            child: CustomText(
                              title: tag,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,

                            )
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),

            ),
          ],
        ),
      ),

    );
  }

   String selectedTag = 'Any';

  final List<String> tags = [
    'Any',
    'Chat',
    'Party',
    'Sing',
    'Radio',
    'Poetry',
    'Game',
    'Soccer',
    'Birthday',
    'Emotion',
    'DJ'
  ];
}


void _selectImage(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        height: 200,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 15.h,),

            Container(
              height: 35.h, 
              width: 390.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r)
              ),
              child: CustomText(title: "Select Image",
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              
              ),
            ),


            Container(
              height: 35.h,
              width: 390.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r)
              ),
              child: CustomText(title: "Take Image",
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,

              ),
            ),


            Container(
              height: 35.h,
              width: 390.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r)
              ),
              child: CustomText(title: "Cancel",
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,

              ),
            )
          ],
        )
      );
    },
  );
}