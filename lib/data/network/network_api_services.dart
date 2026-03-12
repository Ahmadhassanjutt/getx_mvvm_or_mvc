
import 'dart:io';

import 'package:getx_and_mvvm_or_mvc/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

import '../app_exceptions.dart';

class NetworkApiServices extends BaseApiServices {

  @override
  Future<dynamic> getApi(String url)  async {

    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);

    }on SocketException {
      throw InternetExceptions("");
    }on RequestTimeOut {
      throw RequestTimeOut("");

  }
        return responseJson;
}

  @override
  Future<dynamic> postApi(var data, String url)  async {

    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);

    }on SocketException {
      throw InternetExceptions("");
    }on RequestTimeOut {
      throw RequestTimeOut("");

    }
    return responseJson;
  }

dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        dynamic responseJson = response.body;
        return responseJson;
      case 400:
        throw InvalidUrl(response.body.toString());
      default:
        throw FetchDataException("Error accured while communicating with server with status code ${response.statusCode.toString()}");
    }
}
}