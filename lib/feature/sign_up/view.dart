import 'package:e_commerce_project/feature/login/view.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/size.dart';
import '../../widget/custom_textform.dart';
import '../otp/view.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: sizeFromHeight(context, 3.2),
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
                      height: sizeFromHeight(context, 6),
                )),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: sizeFromHeight(context, 4.7)),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2, horizontal: 13),
                    child: ListView(
                      children: [
                        const SizedBox(height: 13),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: const [
                              Expanded(
                                  child: Divider(
                                thickness: 2,
                              )),
                              Text(
                                "   SIGN UP   ",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                  child: Divider(
                                thickness: 2,
                              )),
                            ],
                          ),
                        ),
                        const SizedBox(height: 13),
                        TextFormByField(
                          inputTxt: TextInputType.text,
                          hint: "User Name",
                          color: Colors.black12.withOpacity(0.1),
                          // validator: Validator.email,
                          // onSaved: (v) => controller.email = v!,
                        ),
                        const SizedBox(height: 13),
                        TextFormByField(
                          inputTxt: TextInputType.emailAddress,
                          hint: "E-Mail",
                          color: Colors.black12.withOpacity(0.1),
                          // validator: Validator.password,
                          // onSaved: (v) => controller.password = v!,
                        ),
                        const SizedBox(height: 13),
                        TextFormByField(
                          inputTxt: TextInputType.number,
                          hint: "Enter Mobile",
                          color: Colors.black12.withOpacity(0.1),
                          // validator: Validator.password,
                          // onSaved: (v) => controller.password = v!,
                        ),
                        const SizedBox(height: 13),
                        TextFormByField(
                          inputTxt: TextInputType.number,
                          hint: "Password",
                          color: Colors.black12.withOpacity(0.1),
                          // validator: Validator.password,
                          // onSaved: (v) => controller.password = v!,
                        ),
                        const SizedBox(height: 13),
                        TextFormByField(
                          inputTxt: TextInputType.number,
                          hint: "Confirm Password",
                          color: Colors.black12.withOpacity(0.1),
                          // validator: Validator.password,
                          // onSaved: (v) => controller.password = v!,
                        ),
                        const SizedBox(height: 13),
                        // controller.isLoading
                        // ? const Center(child:  CircularProgressIndicator())
                        //     :
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Container(
                            height: 50,
                            child: RaisedButton(
                                color: kPrimaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                elevation: 2,
                                onPressed: () async {

                                  // AFTER SIGNUP


                                  //GO TO OTP
                                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const Otp()));




                                  // // setState(() => controller.isLoading = true);
                                  // final message = await controller.Login();
                                  // if (message == 'ok') {
                                  // Navigator.pushReplacement(
                                  // context,
                                  // MaterialPageRoute(
                                  // builder: (context) => const Home(),
                                  // ));
                                  // } else if (message != null && message.isNotEmpty) {
                                  // print(message);
                                  // showSnackBar(context, message, isError: true);
                                  // }
                                  // setState(() => controller.isLoading = false);
                                  // print("----------------");
                                  // print(message);
                                },
                                child: const Text(
                                  "SIGN UP",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )),
                          ),
                        ),
                        const  SizedBox(height: 13),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Do You Have Email ?",style: TextStyle(fontWeight: FontWeight.w500),),
                            TextButton(onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const Login()));

                            }, child: const Text("LOGIN",style: TextStyle(color: kPrimaryColor),))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
