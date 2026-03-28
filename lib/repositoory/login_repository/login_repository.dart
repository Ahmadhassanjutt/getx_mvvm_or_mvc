
import 'package:getx_and_mvvm_or_mvc/data/network/network_api_services.dart';
import 'package:getx_and_mvvm_or_mvc/resources/app_url/app_url.dart';

class LoginRepository {

  final _apiServices = NetworkApiServices();

  Future<dynamic> loginApi(var data) async{
    dynamic response = _apiServices.postApi(data, AppUrl.loginApi);
    return response;
  }

}