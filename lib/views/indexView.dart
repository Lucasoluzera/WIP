import 'package:flutter/material.dart';
import 'package:wipapp/_routing/routes.dart';
import 'package:wipapp/utils/colors.dart';
import 'package:wipapp/utils/utils.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: primaryColor),
    );

    final pageTitle = Padding(
      padding: EdgeInsets.only(top: 80),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: SizedBox(
                child: Image.asset("assets/images/iw-icon.png"),
                height: 80,
                width: 80,
              ),
            ),
            Text(
              AppConfig.appName,
              style: GoogleFonts.megrim(
                color: Colors.white,
                fontSize: 70.0,
                fontWeight: FontWeight.w100,
              ),
            )
          ],
        ),
      ),
    );

    final descricao = Container(
      child: Center(
        child: Text(
          AppConfig.appTagline,
          style: TextStyle(
            color: Colors.white60,
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );


    final registerBtn = Container(
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        border: Border.all(color: Colors.orange[400]),
        color: Colors.orange[400],
      ),
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => Navigator.pushNamed(context, cadastroIndexViewRoute),
        color: Colors.orange[400],
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(7.0),
        ),
        child: Text(
          'Sou novo',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20.0,
          ),
        ),
      ),
    );

    final buttons = Padding(
      padding: EdgeInsets.only(
        top: 40.0,
        bottom: 30.0,
        left: 30.0,
        right: 30.0,
      ),
      child: Column(
        children: <Widget>[SizedBox(height: 20.0), registerBtn],
      ),
    );

    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 100.0),
              decoration: BoxDecoration(gradient: primaryGradient),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[pageTitle, descricao, buttons],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
