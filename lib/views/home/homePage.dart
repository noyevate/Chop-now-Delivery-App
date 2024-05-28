// ignore_for_file: file_names

import 'package:chopnow_driver/common/color_extension.dart';
import 'package:chopnow_driver/common/custom_appbar.dart';
import 'package:chopnow_driver/common/size.dart';
import 'package:chopnow_driver/views/home/widgets/orders/delivered_orders.dart';
import 'package:chopnow_driver/views/home/widgets/orders/active.dart';
import 'package:chopnow_driver/views/home/widgets/orders/ready_orders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/home_tabs.dart';

class HomePage extends StatefulHookWidget {
  final int? initialTabIndex; // Add this parameter

  const HomePage({Key? key, this.initialTabIndex})
      : super(key: key); // Add this parameter

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: orderList.length, vsync: this);

    if (widget.initialTabIndex != null) {
      // Set initial tab index if provided
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _tabController.animateTo(widget.initialTabIndex!);
      });
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Tcolor.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Tcolor.primary,
        flexibleSpace: const CustomAppBar(),
      ),
      body: Container(
        child: Stack(
          children: [
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              children: [
                SizedBox(height: 25.h),
                HomeTabs(tabController: _tabController),
                SizedBox(height: 25.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 26.w),
                  height: height * 0.5,
                  color: Colors.transparent,
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      ReadyOrders(),
                      ActiveDeliveries(),
                      DeliveredOrders(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
