import 'package:chopnow_driver/views/home/widgets/bottom_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  
  await GetStorage.init();
  runApp(const MyApp());
}

Widget defaultHome =  MainScreen();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(720, 1640),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Chop Now Restaurants',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home:  defaultHome,
        );
      }
    );
  }
}

