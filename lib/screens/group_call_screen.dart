import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroupCallScreen extends StatefulWidget {
  const GroupCallScreen({super.key});

  @override
  State<GroupCallScreen> createState() => _GroupCallScreenState();
}

class _GroupCallScreenState extends State<GroupCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height:double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/bg.png"))
        ),
        child:  SingleChildScrollView(
          child: Column(
            children: [
             Container(
               height: 100.h,
               child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
               itemCount: 10,
          
          
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder:(context,index){
                      return  ListTile(
                        leading: Image.asset("assets/icons/profile.png"),
                        title: Text("Md Habib Khan", style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white
                        ),),
          
                      );
                    }
               ),
             ),
              ListView.builder(
                  itemCount: 5,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder:(context,index){
                    return  ListTile(
                      leading: Image.asset("assets/icons/profile.png"),
                      title: Text("Md Habib Khan", style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white
                      ),),

                    );
                  }),
            ],
          ),
        )
      ),
    )
    ;
  }
}
