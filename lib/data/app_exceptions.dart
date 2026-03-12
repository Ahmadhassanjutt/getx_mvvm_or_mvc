

class AppExceptions implements Exception{

  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  String toString(){
    return "$_prefix$_message";
  }
}

class InternetExceptions extends AppExceptions{
  InternetExceptions([String? message]): super(message, "No Internet Connection");
}

class RequestTimeOut extends AppExceptions{
  RequestTimeOut([String? message]): super(message, "Request Time Out");
}

class ServerException extends AppExceptions{
  ServerException([String? message]): super(message, "Internal Server Error");
}

class InvalidUrl extends AppExceptions{
  InvalidUrl([String? message]): super(message, "Invalid URL");
}

class FetchDataException extends AppExceptions{
  FetchDataException([String? message]): super(message, "");
}