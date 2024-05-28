import 'package:chopnow_driver/common/color_extension.dart';
import 'package:chopnow_driver/common/reusable_text.dart';
import 'package:chopnow_driver/common/size.dart';
import 'package:chopnow_driver/views/home/widgets/orders/order_widgets/order_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OrderDetailsTile extends StatelessWidget {
  OrderDetailsTile({super.key, required this.order});

  var order;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const ReadyOrderInformation());
      },
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            height: 160.h,
            width: width,
            decoration: BoxDecoration(
                color: Tcolor.placeHolder,
                borderRadius: BorderRadius.circular(20.r)),
            child: Container(
              padding: EdgeInsets.all(4.r),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24.r),
                    child: Image.asset(
                      "assets/img/dess_4.png",
                      width: 120.w,
                      height: 160.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReuseableText(
                        title: "Chicken Burger",
                        style: TextStyle(
                            fontSize: 12,
                            color: Tcolor.gray,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.local_restaurant_sharp,
                            color: Colors.redAccent,
                            size: 30.sp,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          ReuseableText(
                            title: order['restaurantAddress'],
                            style: TextStyle(
                                fontSize: 10,
                                color: Tcolor.gray,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.delivery_dining_rounded,
                            color: Tcolor.Secondary,
                            size: 30.sp,
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          ReuseableText(
                            title:
                                "No 15 adenile str, off litter road ilorin Kw.St",
                            style: TextStyle(
                                fontSize: 10,
                                color: Tcolor.gray,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10.w),
                            decoration: BoxDecoration(
                              color: Tcolor.primary,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.r),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 3.w,
                                ),
                                ReuseableText(
                                  title: "To",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Tcolor.gray,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Icon(
                                  Icons.local_restaurant_sharp,
                                  color: Colors.redAccent,
                                  size: 30.sp,
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                ReuseableText(
                                  title: "30km",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Tcolor.gray,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10.w),
                            decoration: BoxDecoration(
                              color: Tcolor.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.r),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 3.w,
                                ),
                                ReuseableText(
                                  title: "From",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Tcolor.gray,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Icon(
                                  Icons.local_restaurant_sharp,
                                  color: Colors.redAccent,
                                  size: 30.sp,
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                ReuseableText(
                                  title: "To",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Tcolor.gray,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Icon(
                                  Icons.delivery_dining_rounded,
                                  color: Tcolor.Secondary,
                                  size: 30.sp,
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                ReuseableText(
                                  title: "40km",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Tcolor.gray,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10.w),
                            decoration: BoxDecoration(
                              color: Tcolor.primary,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.r),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 3.w,
                                ),
                                ReuseableText(
                                  title: "\u20A6 ${order['deliveryFee']}",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Tcolor.gray,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10.w),
                            decoration: BoxDecoration(
                              color: Tcolor.primary,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.r),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 3.w,
                                ),
                                Icon(
                                  Icons.alarm_add_sharp,
                                  color: Colors.redAccent,
                                  size: 30.sp,
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                ReuseableText(
                                  title: "35 min",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Tcolor.gray,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(right: 10.w),
              decoration: BoxDecoration(
                color: Tcolor.placeHolder,
                borderRadius: BorderRadius.all(
                  Radius.circular(15.r),
                ),
              ),
              child: ReuseableText(
                title: "Pick Up",
                style: TextStyle(
                    fontSize: 10,
                    color: Tcolor.gray,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Positioned(
            right: 100.w,
            child: Container(
              margin: EdgeInsets.only(right: 10.w),
              decoration: BoxDecoration(
                color: Tcolor.placeHolder,
                borderRadius: BorderRadius.all(
                  Radius.circular(15.r),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24.r),
                child: Image.asset(
                  "assets/img/res_3.png",
                  width: 50.w,
                  height: 50.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
