import 'package:cook_order_app/constant/exception_message.dart';
import 'package:cook_order_app/verify_number_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

mixin UrlMixin  on State<VerifyNumberPage> {
  Future<void> openUrlMethod(String url) async {
    final Uri uri = Uri.parse(url);
    try {
        await launchUrl(uri);
      
    } catch (e) {
      debugPrint(exceptionMessage.messageInstance.urlMessage + " :${e}");
    }
  }
}


