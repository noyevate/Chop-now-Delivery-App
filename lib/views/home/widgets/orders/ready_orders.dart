import 'package:chopnow_driver/common/uidata.dart';
import 'package:chopnow_driver/views/home/widgets/orders/widget/order_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReadyOrders extends HookWidget {
  const ReadyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Container(
            height: 240.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              color: Colors.transparent,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 12.w, top: 10.h),
              child: 
                   ListView.builder(
                      itemCount: order.length,
                      itemBuilder: (context, i) {
                        final orders = order[i];
                        return Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: OrderDetailsTile(
                            order: orders,
                          ),
                        );
                      },
                    ),
            ),
          );
  }
}
