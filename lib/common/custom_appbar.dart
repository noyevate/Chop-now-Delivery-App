// ignore_for_file: unused_import

import 'package:chopnow_driver/common/color_extension.dart';
import 'package:chopnow_driver/common/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();

    return Container(
      width: double.infinity,
      height: 200.h,
      padding: EdgeInsets.fromLTRB(24.w, 70.h, 24.w, 0),
      color: Tcolor.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 35.r,
                backgroundColor: Tcolor.placeHolder,
                // Uncomment the line below if you have a valid image URL

                child: SvgPicture.asset("assets/img/driver-svgrepo-com.svg"),
              ),
              SizedBox(width: 10.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReuseableText(
                    title: "Current Location",
                    style: TextStyle(
                      color: Tcolor.white,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ReuseableText(
                    title: "No 10, Tanke, Oke Odo Ilo, Kw.St",
                    style: TextStyle(
                      color: Tcolor.white,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            getTimeOfDay(),
            style: const TextStyle(fontSize: 35),
          )
        ],
      ),
    );
  }

  String getTimeOfDay() {
    final now = DateTime.now();
    final hour = now.hour;

    if (hour >= 7 && hour < 16) {
      return '☀️'; // Between 7am and 4pm
    } else if (hour >= 16 && hour < 19) {
      return '⛅'; // Between 4pm and 7pm
    } else {
      return '🌙'; // Between 7pm and 7am
    }
  }
}
