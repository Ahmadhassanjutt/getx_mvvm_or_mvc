
import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          "email" : "Enter Email",
          "internet_exception" : "You are unable to show results\n Please check your data\nconnection",
          "general_exception" : "We're unable to process your request at the moment.\n Please try again later.",
         },

    'ur_PK': {
      "email" : "Urdu main likhna",
    },

      };
}