import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wipapp/app.dart';
import 'package:wipapp/utils/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: primaryDark
  ));
  runApp(App());
}
