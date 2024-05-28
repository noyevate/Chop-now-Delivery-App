import 'package:chopnow_driver/common/color_extension.dart';
import 'package:chopnow_driver/common/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReadyOrderInformation extends StatefulWidget {
  const ReadyOrderInformation({super.key});

  @override
  State<ReadyOrderInformation> createState() => _ReadyOrderInformationState();
}

class _ReadyOrderInformationState extends State<ReadyOrderInformation> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBottomSheet();
    });
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      isDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 700.h,
          width: double.infinity, // Set width to double.infinity to take the full width
          color: Tcolor.Lightwhite,
          child: Stack(
            children: [
              Center(
                child: ReuseableText(
                  title: "Testing page",
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Tcolor.gray,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page"),
      ),
      body: const Center(
        child: Text("Google Maps"),
      ),
    );
  }
}
