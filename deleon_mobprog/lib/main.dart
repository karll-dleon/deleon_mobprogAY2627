import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const KonektaApp());
}

class KonektaApp extends StatelessWidget {
  const KonektaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: APP_NAME,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: APP_PRIMARY),
            scaffoldBackgroundColor: APP_BACKGROUND,
            useMaterial3: true,
          ),
          home: const HomeScreen(),
        );
      },
    );
  }
}
