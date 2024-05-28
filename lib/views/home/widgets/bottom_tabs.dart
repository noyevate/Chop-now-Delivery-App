// ignore_for_file: must_be_immutable

import 'package:chopnow_driver/common/color_extension.dart';
import 'package:chopnow_driver/common/controllers/tab_index_controller.dart';
import 'package:chopnow_driver/views/home/homePage.dart';
import 'package:chopnow_driver/views/profile/profile_page.dart';
import 'package:chopnow_driver/views/support/support_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({
    super.key,
  });
  List<Widget> pageList = const [HomePage(), SupportPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    final pageController = Get.put(TabIndexController());

    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            pageList[pageController.tabIndex],
            Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                data: Theme.of(context).copyWith(canvasColor: Tcolor.primary),
                child: BottomNavigationBar(
                  iconSize: 40.sp,
                  selectedItemColor: Tcolor.Secondary,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  onTap: (value) {
                    pageController.setTabIndex = value;
                  },
                  currentIndex: pageController.tabIndex,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: "Home"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.chat), label: "support"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person_2), label: "profile"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
