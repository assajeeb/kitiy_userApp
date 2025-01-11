import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kitti/widgets/custom_text.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: CustomText(title: "Kitti Official Support",),),
    ));
  }
}
