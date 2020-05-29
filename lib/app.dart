import 'package:flutter/material.dart';
import 'package:wipapp/_routing/routes.dart';
import 'package:wipapp/_routing/router.dart' as router;
import 'package:wipapp/theme.dart';
import 'package:scoped_model/scoped_model.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'WIP',
        debugShowCheckedModeBanner: false,
        theme: buildThemeData(),
        onGenerateRoute: router.generateRoute,
        initialRoute: landingViewRoute,
      );
  }
}
