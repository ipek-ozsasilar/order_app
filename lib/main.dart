import 'package:cook_order_app/constant/size.dart';
import 'package:cook_order_app/create_account_page.dart';
import 'package:cook_order_app/mailSendCodePage.dart';
import 'package:cook_order_app/started_page.dart';
import 'package:cook_order_app/verify_number_page.dart';
import 'package:cook_order_app/map_page.dart';
import 'package:cook_order_app/sign_in_page.dart';
import 'package:cook_order_app/reset_password_page.dart';
import 'package:cook_order_app/verify_mail_page.dart';
import 'package:cook_order_app/phone_number_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
        ),
        color: Colors.transparent,
      )
      
      ),
      
      
      themeMode: ThemeMode.light,
      home:startedPage(),
    );
  }
}
