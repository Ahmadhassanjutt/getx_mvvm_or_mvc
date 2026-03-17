import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:getx_and_mvvm_or_mvc/resources/assets/image_assets.dart';
import 'package:getx_and_mvvm_or_mvc/resources/components/internet_exception_widget.dart';
import 'package:getx_and_mvvm_or_mvc/utils/utils.dart';

import '../data/app_exceptions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return InternetExceptionWidget();
   //  return Scaffold(
   // floatingActionButton: FloatingActionButton(
   //   child: const Icon(Icons.error),
   //     backgroundColor: Colors.blue,
   //
   //     onPressed: (){
   //         Utils.toastMessageCenter("hi I am ahmad");
   // }),
   //    appBar: AppBar(
   //      title:  Text("Splash Screen".tr),
   //    ),
   //    body: Image(image: AssetImage(ImageAssets.splashScreen)),
   //  );
  }
}
