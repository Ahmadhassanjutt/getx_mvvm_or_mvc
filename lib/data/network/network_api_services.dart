import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:getx_and_mvvm_or_mvc/data/network/base_api_services.dart';
import '../app_exceptions.dart';

class NetworkApiServices extends BaseApiServices {

  @override
  Future<dynamic> getApi(String url) async {

    dynamic responseJson;

    try {
      final response = await http
          .get(Uri.parse(url))
          .timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);

    } on SocketException {
      throw InternetExceptions("No Internet Connection");
    } on HttpException {
      throw FetchDataException("Error while fetching data");
    }

    return responseJson;
  }

  @override
  Future<dynamic> postApi(String url, dynamic data) async {

    dynamic responseJson;

    try {
      final response = await http
          .post(
        Uri.parse(url),
        body: data,
      )
          .timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);

    } on SocketException {
      throw InternetExceptions("No Internet Connection");
    } on HttpException {
      throw FetchDataException("Error while posting data");
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {

    switch (response.statusCode) {

      case 200:
        return response.body;

      case 400:
        throw InvalidUrl(response.body.toString());

      case 500:
        throw ServerException(response.body.toString());

      default:
        throw FetchDataException(
          "Error occurred while communicating with server with status code ${response.statusCode}",
        );
    }
  }
}