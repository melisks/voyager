import 'package:flutter/material.dart';
import 'package:voyager/theme/color_pallete.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              Text(
                "Login here!",
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
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text("Enter Email"),
                      labelStyle: TextStyle(color: AppColor.ckwhite)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text("Enter Password"),
                    labelStyle: TextStyle(color: AppColor.ckwhite),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: AppColor.ckgrey),
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: AppColor.ckwhite),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
