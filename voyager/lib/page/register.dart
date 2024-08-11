import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:voyager/theme/color_pallete.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                AppColor.ck1,
                AppColor.ck2,
                AppColor.ck3,
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  "Register Here!",
                  style: TextStyle(
                    color: AppColor.ckwhite,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        label: Text("Enter Name"),
                        labelStyle: TextStyle(color: AppColor.ckwhite)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        label: Text("Enter Email"),
                        labelStyle: TextStyle(color: AppColor.ckwhite)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        label: Text("Enter Password"),
                        labelStyle: TextStyle(color: AppColor.ckwhite)),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.ckgrey),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(color: AppColor.ckwhite),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Or continue with"),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "assets/images/google_icon.png",
                      ),
                    ),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "assets/images/apple_icon.png",
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "You have an account? ",
                          children: [
                            TextSpan(
                              text: "Login here",
                              recognizer: TapGestureRecognizer()
                                ..onTap =
                                    () => Navigator.of(context).pushNamed("/"),
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
