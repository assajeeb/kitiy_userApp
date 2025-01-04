import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PublicGroup extends StatelessWidget {

var groupValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Search Contacts",
              border: OutlineInputBorder()
          ),
        ),

        SizedBox(height: 10.h,),
        ListView.builder(
            itemCount: 20,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder:(context,index){
              return  ListTile(
                leading: Image.asset("assets/icons/profile.png"),
                title: Text("Md Habib Khan"),
                trailing: Radio(value: false,
                    groupValue: groupValue,
                    onChanged:(value){

                    }),
              );
            }),
      ],
    );
  }
}



class PrivateGroup extends StatelessWidget {

  var groupValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


        SizedBox(height: 10.h,),
        ListView.builder(
            itemCount: 20,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder:(context,index){
              return  ListTile(
                leading: Image.asset("assets/icons/profile.png"),
                title: Text("Md Jasim Khan"),
                trailing: Radio(value: false,
                    groupValue: groupValue,
                    onChanged:(value){

                    }),
              );
            }),
      ],
    );
  }
}