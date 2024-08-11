import 'package:flutter/material.dart';
import 'package:voyager/page/home.dart';
import 'package:voyager/page/login.dart';
import 'package:voyager/page/register.dart';
import 'package:voyager/theme/theme.dart';

void main() {
  runApp(MaterialApp(
    theme: AppTheme.theme,
    routes: {
      "/": (context) => const LoginPage(),
      "/register": (context) => const RegisterPage(),
      "/home": (context) => const Home(),
    },
  ));
}
