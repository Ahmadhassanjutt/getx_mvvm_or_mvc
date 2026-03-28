import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_and_mvvm_or_mvc/repositoory/login_repository/login_repository.dart';
class LoginController extends GetxController{

  final _api = LoginRepository();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;


  void loginApi(){

    // _api.loginApi(data).then((onValue){
    //
    // }).onError((error, stackTrace){
    //
    // });

  }

}