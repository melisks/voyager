import 'package:flutter/material.dart';
import 'package:voyager/page/home.dart';
import 'package:voyager/page/login.dart';
import 'package:voyager/theme/theme.dart';

void main() {
  runApp(MaterialApp(
    theme: AppTheme.theme,
    routes: {
      "/": (context) => const LoginPage(),
      "/home": (context) => const Home(),
    },
  ));
}
