import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:getx_and_mvvm_or_mvc/resources/assets/image_assets.dart';
import 'package:getx_and_mvvm_or_mvc/resources/colors/app_color.dart';
import 'package:getx_and_mvvm_or_mvc/resources/components/general_exception.dart';
import 'package:getx_and_mvvm_or_mvc/resources/components/internet_exception_widget.dart';
import 'package:getx_and_mvvm_or_mvc/resources/components/round_button.dart';
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
    return Scaffold(
   floatingActionButton: FloatingActionButton(
    child: Icon(Icons.error),
       backgroundColor: Colors.blue,
       onPressed: (){
           Utils.toastMessageCenter("hi I am ahmad");
   }),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title:  Text("Splash Screen".tr,style: TextStyle(color: AppColor.whiteColor),),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            RoundButton(onPressed: () {  }, title: 'Login',width: double.infinity,loading: true,),
            SizedBox(height: 20,),
            RoundButton(onPressed: () {  }, title: 'Sig Up',width: 200,),
          ],
        ),
      ),
      //Image(image: AssetImage(ImageAssets.splashScreen)),
    );
  }
}
