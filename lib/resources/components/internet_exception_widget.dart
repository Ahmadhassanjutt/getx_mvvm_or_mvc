import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:getx_and_mvvm_or_mvc/resources/colors/app_color.dart';

class InternetExceptionWidget extends StatefulWidget {
  const InternetExceptionWidget({super.key});

  @override
  State<InternetExceptionWidget> createState() =>
      _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Icon(Icons.cloud_off, color: AppColor.redColor),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Center(child: Text("internet_exception".tr)),
          ),
        ],
      ),
    );
  }
}
