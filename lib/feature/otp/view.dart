import 'dart:async';

import 'package:e_commerce_project/navigate/navigator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../constant/color.dart';
import '../../constant/size.dart';
import '../profile_pic/view.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  StreamController<ErrorAnimationType>? errorController;
  TextEditingController textEditingController = TextEditingController();
  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white10,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              height: sizeFromHeight(context, 2.10),
              color: kPrimaryColor,
              child: Stack(
                children: [
                  Image.asset(
                    'Image/elip.png',
                    fit: BoxFit.fitWidth,
                    width: sizeFromWidth(context, 1),
                  ),
                  Center(
                      child: Image.asset(
                        'Image/circle.png',
                        width: sizeFromWidth(context, 4),
                      )),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: sizeFromHeight(context, 2.5)),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25))),
                  child: ListView(
                    children: [
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: const [
                            Expanded(
                                child: Divider(
                                  thickness: 2,
                                )),
                            Text(
                              "   OTP VERIVICATION   ",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                                child: Divider(
                                  thickness: 2,
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                        padding:  EdgeInsets.only(top: 15),
                        child:  Center(child: Text("OTP has been sent to 9979409958")),
                      ),
                      Form(
                        key: formKey,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                            child:PinCodeTextField(
                              animationCurve:Curves.easeIn,
                              appContext: context,
                              pastedTextStyle: TextStyle(
                                color: Colors.green.shade600,
                                fontWeight: FontWeight.bold,
                              ),
                              length: 5,
// obscureText: true,
// obscuringCharacter: '*',
// obscuringWidget: FlutterLogo(
//   size: 24,
// ),
                              blinkWhenObscuring: true,
                              animationType: AnimationType.fade,
                              validator: (v) {
                                if (v!.length < 3) {
                                  return "I'm from validator";
                                } else {
                                  return null;
                                }
                              },
                              pinTheme: PinTheme(
                                shape: PinCodeFieldShape.box,
                                activeColor:Colors.white ,
                                inactiveColor: kPrimaryColor,
                                inactiveFillColor: Colors.white,
                                selectedFillColor: Colors.white60,
                                borderRadius: BorderRadius.circular(5),
                                fieldHeight: 60,
                                fieldWidth: 50,
                                activeFillColor: Colors.white10,
                              ),
                              cursorColor: Colors.black,
                              animationDuration: const Duration(milliseconds: 300),
                              enableActiveFill: true,
                              errorAnimationController: errorController,
                              controller: textEditingController,
                              textStyle: const TextStyle(fontSize: 20, height: 1.6,color: Colors.black),
                              keyboardType: TextInputType.number,
                              boxShadows:const [
                                BoxShadow(
                                  offset:  Offset(0, 1),
                                  color: Colors.black12,
                                  blurRadius: 10,
                                )
                              ],
                              onCompleted: (v) {
                                print("Completed");
                              },
// onTap: () {
//   print("Pressed");
// },
                              onChanged: (value) {
                                print(value);
                                setState(() {
                                  currentText = value;
                                });
                              },
                              beforeTextPaste: (text) {
                                print("Allowing to paste $text");
//if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
//but you can show anything you want here, like your pop up saying wrong paste format or etc
                                return true;
                              },
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 20),
                        child: ButtonTheme(
                            height: 50,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: RaisedButton(
                              color: kPrimaryColor,
                              onPressed: (){
                                kpush(context, const ProfilePic());
                              },child:const Text("Verify Otp",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),) ,)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        child: Row(
                          children: [
                            const Text("Didn't recive OTP? ",style: TextStyle(color: Colors.white)),
                            TextButton(onPressed: (){}, child: const Text("Resend OTP",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),))
                          ],
                        ),
                      ),




                    ],
                  ),
                )),

          ],
        ));
  }
}
