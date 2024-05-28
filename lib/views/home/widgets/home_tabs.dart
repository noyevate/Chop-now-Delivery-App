import 'package:chopnow_driver/common/color_extension.dart';
import 'package:chopnow_driver/common/size.dart';
import 'package:chopnow_driver/common/tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTabs extends StatelessWidget {
  const HomeTabs({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.w),
      child: Container(
        height: 60.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 242, 238, 239),
          borderRadius: BorderRadius.circular(60.r),
        ),
        child: Row(
          children: List.generate(orderList.length, (i) {
            return Flexible(
              child: GestureDetector(
                onTap: () {
                  _tabController.animateTo(i);
                },
                child: Container(
                  alignment: Alignment.center,
                  child: TabWidget(title: orderList[i]),
                  decoration: BoxDecoration(
                    color: _tabController.index == i ? Tcolor.Secondary : Colors.transparent,
                    borderRadius: BorderRadius.circular(60.r),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
