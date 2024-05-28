import 'package:chopnow_driver/common/custom_appbar.dart';
import 'package:chopnow_driver/common/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        flexibleSpace: const CustomAppBar(),
      ),
      body: Center(
        child: ReuseableText(title: "Support Page", style: TextStyle(fontSize:30.sp, fontWeight: FontWeight.bold
        )),
      ),
    );
  }
}