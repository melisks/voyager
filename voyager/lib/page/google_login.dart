import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:voyager/page/home.dart';

class GoogleLogin extends StatefulWidget {
  const GoogleLogin({super.key});

  @override
  State<GoogleLogin> createState() => _GoogleLoginState();
}

class _GoogleLoginState extends State<GoogleLogin> {
  _googleTap() async {
    final Uri url = Uri.parse('https://support.google.com/');
    await launchUrl(url);
  }

  _CreateAccount() async {
    final Uri url = Uri.parse(
        'https://accounts.google.com/lifecycle/steps/signup/name?ddm=0&dsh=S573037018:1723462691729751&flowEntry=SignUp&flowName=GlifWebSignIn&TL=AKeb6mxl7R92U2d0EKs_jRvRfAioIqb1Hf-nqrvfkqXTqG2plFk9hEUFpkgRx1wS');
    await launchUrl(url);
  }

  bool IsStaySign = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/google.webp",
            height: 200,
            width: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Email"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Password"),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            },
            child: const Text("Sign in"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: IsStaySign,
                    onChanged: (bool? value) {
                      setState(() {
                        IsStaySign = value!;
                      });
                    },
                  ),
                  const Text("Stay signed in"),
                ],
              ),
              TextButton(onPressed: _googleTap, child: const Text("Need Help?"))
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: _CreateAccount,
                child: const Text("Create google account"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
