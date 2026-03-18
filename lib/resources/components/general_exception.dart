import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:getx_and_mvvm_or_mvc/resources/colors/app_color.dart';

class GeneralExceptionWidget extends StatefulWidget {
  final VoidCallback onPressed;
  const GeneralExceptionWidget({super.key,required this.onPressed});

  @override
  State<GeneralExceptionWidget> createState() =>
      _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(height: height * .15),
          Icon(Icons.cloud_off, color: AppColor.redColor, size: 50),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Center(child: Text("general_exception".tr,textAlign: TextAlign.center,)),
          ),
          SizedBox(height: height * .15),
          InkWell(
            onTap: widget.onPressed,
            child: Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  "retry",
                  style: TextStyle(
                    color: AppColor.whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight(500),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
