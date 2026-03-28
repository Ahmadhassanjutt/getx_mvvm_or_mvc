import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_and_mvvm_or_mvc/resources/colors/app_color.dart';
import 'package:getx_and_mvvm_or_mvc/resources/components/round_button.dart';
import 'package:getx_and_mvvm_or_mvc/view/view_models/controller/login_controller.dart';

import '../../utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginController = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
        title: Text(
          "login_screen".tr,
          style: TextStyle(
            color: AppColor.whiteColor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: loginController.emailController.value,
                    focusNode: loginController.emailFocusNode.value,
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackbar("Email", "please enter your email");
                      }
                      return null;
                    },
                    onFieldSubmitted: (value) {
                      if (value.isNotEmpty) {
                        Utils.fieldFocusChange(
                          context,
                          loginController.emailFocusNode.value,
                          loginController.passwordFocusNode.value,
                        );
                        // loginController.loginApi();
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "email_hint".tr,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: loginController.passwordController.value,
                    focusNode: loginController.passwordFocusNode.value,
                    obscureText: true,
                    obscuringCharacter: "y",
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackbar(
                          "Password",
                          "please enter your password",
                        );
                      }
                      return null;
                    },
                    onFieldSubmitted: (value) {
                      if (value.isNotEmpty) {
                        // loginController.loginApi();
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "password_hint".tr,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            RoundButton(
              width: double.infinity,
              title: "login".tr,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // loginController.loginApi();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
