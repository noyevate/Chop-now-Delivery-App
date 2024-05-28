
import 'package:chopnow_driver/common/color_extension.dart';
import 'package:chopnow_driver/common/custom_button_widget.dart';
import 'package:chopnow_driver/common/size.dart';
import 'package:chopnow_driver/views/profile/profile_widget/profile_appbar.dart';
import 'package:chopnow_driver/views/profile/profile_widget/profile_tile_widget.dart';
import 'package:chopnow_driver/views/profile/profile_widget/user_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Tcolor.Lightwhite,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: const ProfileAppBar(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: const UserInfoWidget(
                          imageUrl: "assets/img/driver-svgrepo-com.svg",
                          name: "Ahmed",
                          email: "Ahmedgmail.com",
                          ),
                          
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 420.h,
                      decoration: BoxDecoration(
                        color: Tcolor.white,
                      ),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          ProfileTileWidget(
                            onTap: () {
                              //Get.to(() => const Orders());
                            },
                            title: "My Orders",
                            icon: Ionicons.fast_food_outline,
                          ),
                          ProfileTileWidget(
                            onTap: () {},
                            title: "My Favourite Places",
                            icon: Ionicons.heart_outline,
                          ),
                          
                          ProfileTileWidget(
                            onTap: () {},
                            title: "Delivery History",
                            icon: MaterialCommunityIcons.truck_delivery_outline,
                          ),

                          ProfileTileWidget(
                            onTap: () {},
                            title: "Vehicle Information",
                            icon: AntDesign.car
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      height: 300.h,
                      decoration: BoxDecoration(
                        color: Tcolor.white,
                      ),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          
                          ProfileTileWidget(
                            onTap: () {},
                            title: "Service Center",
                            icon: AntDesign.customerservice,
                          ),
                          
                          ProfileTileWidget(
                            onTap: () {},
                            title: "Settings",
                            icon: AntDesign.setting,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    CustomButton(
                      title: "Logout",
                      raduis: 20.r,
                      btnColor: Tcolor.primary,
                      onTap: () {
                        
                      },
                      btnHeight: 70.h,
                      btnWidth: width/2,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
