import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get_storage/get_storage.dart';

class DeliveredOrders extends HookWidget {
  const DeliveredOrders({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Container(
            height: 240.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              color: Colors.transparent,
            ),
            child: Container(
              height: 50,
              color:const Color.fromARGB(255, 79, 33, 243)
          
            )
    );
  }
}