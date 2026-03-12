import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_and_mvvm_or_mvc/resources/routes/routes.dart';
import 'package:getx_and_mvvm_or_mvc/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashScreen(),
    getPages: AppRoutes.appRoutes(),
    );
  }
}
