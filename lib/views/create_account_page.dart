import 'dart:convert';
import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/padding.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:cook_order_app/core/navigator_abstract.dart';
import 'package:cook_order_app/enum/button_icon_state.dart';
import 'package:cook_order_app/enum/field_size_enum.dart';
import 'package:cook_order_app/enum/text_field_name.dart';
import 'package:cook_order_app/enum/text_style_font.dart';
import 'package:cook_order_app/mixin/gesture_detector_text.dart';
import 'package:cook_order_app/views/sign_in_page.dart';
import 'package:cook_order_app/widget/cook_stack.dart';
import 'package:cook_order_app/widget/divider_widget.dart';
import 'package:cook_order_app/widget/text_button.dart';
import 'package:cook_order_app/widget/text_widget.dart';
import 'package:cook_order_app/widget/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class createAccountPage extends StatefulWidget {
  const createAccountPage({super.key});

  @override
  State<createAccountPage> createState() => _createAccounPageState();
}

class _createAccounPageState extends State<createAccountPage>
    with gestureDetectorText
    implements navigatorProcess {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  late final FlutterSecureStorage _secureStorageLoginInfo;
  late bool onpressedResult;

  @override
  void initState() {
    super.initState();
    _secureStorageLoginInfo = FlutterSecureStorage();
  }

  Future<bool> onPressedFun() async {
    try {
      Map<String, dynamic> userInfo = {'name': nameController.text, 'email': emailController.text, 'password': passwordController.text};
      
      await _secureStorageLoginInfo.write(
          key:"userInfoKey" , value: jsonEncode(userInfo));
    

      return true; // Başarılı olursa true döndür
    } catch (e) {
      return false; // Hata olursa false döndür
    }
  }

  Future<String>? onPressedFun2() async {
    try {
     
      String? userJson=await _secureStorageLoginInfo.read(key: "userInfoKey");
            var mapGetData=jsonDecode(userJson ?? "");

      return mapGetData["name"];
    } catch (e) {
      return ""; 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: sizeClass.sizeInstance.secondPageToolbar,
      ),
      body: Padding(
        padding: paddingClass.paddingInstance.symetricHorizontal,
        child: Center(
          child: Column(
            children: [
              cookStack(),
              textWidget(text: "Hello! Create Account", textStyleWeight: TextStyleWeight.bold),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textWidget(
                      color: colorClass.colorInstance.blueGreyColor,
                      text: "Already have an account?  ",
                      textStyleWeight: TextStyleWeight.thin,
                      ),
                  InkwellText(
                      "Sign in", () => pushMethod(context, signInPage())),
                ],
              ),
              Padding(
                padding: paddingClass.paddingInstance.onlyTopPadding,
                child: textFieldWidget(
                  input: textFieldInputName.email,
                  text: "Your name",
                  iconn: AnimatedIcons.add_event,
                  fieldSize: textFieldSize.large,
                  controller: nameController,
                ),
              ),
              Padding(
                padding: paddingClass.paddingInstance.verticalPadding,
                child: textFieldWidget(
                  input: textFieldInputName.email,
                  text: "Username or Email",
                  iconn: AnimatedIcons.add_event,
                  fieldSize: textFieldSize.large,
                  controller: emailController,
                ),
              ),
              textFieldWidget(
                input: textFieldInputName.password,
                text: "Password",
                iconn: AnimatedIcons.add_event,
                fieldSize: textFieldSize.large,
                controller: passwordController,
              ),
              Padding(
                padding: paddingClass.paddingInstance.sigInButtonPadding,
                child: textButton(
                    text: "Sign in",
                    //page: signInPage(),
                    textColor: colorClass.colorInstance.whiteColor,
                    type: ButtonType.orange,
                    OnPressed: () async {
                      onpressedResult = await onPressedFun();
                      if (onpressedResult) {
                        return showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Center(child: Text('Success')),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('OK'),
                                  )
                                ],
                              );
                            });
                      }
                    }),
              ),
              dividerWidget(),
              Padding(
                padding: paddingClass.paddingInstance.googleButtonTopPadding,
                child: textButton(
                    text: "Connect with Google",
                    textColor: levelColor.levelColorInstance.textFieldBgColor,
                    type: ButtonType.grayWithIcon,
                    OnPressed: ()async{
                       var result=await onPressedFun2();
                       return showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Center(child: Text(result ?? "")),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('OK'),
                                  )
                                ],
                              );
                            });
                    },
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void pushMethod(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return page;
    }));
  }

  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // @ işaretini manuel olarak işleyelim
    if (newValue.text.contains('@')) {
      return newValue;
    }

    // Klavyenizin Alt+Q tuşuyla ne gönderdiğini görmek için
    print("Girilen text: ${newValue.text}");

    return newValue;
  }
}

enum storageKeys {
  email,
  name,
  password,
}
