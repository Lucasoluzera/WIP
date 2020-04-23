import 'package:flutter/material.dart';
import 'package:flutter_social/_routing/routes.dart';
import 'package:flutter_social/utils/colors.dart';
import 'package:flutter_social/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Change Status Bar Color
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: primaryColor),
    );

    final pageTitle = Center(
        child: Row(
          children: <Widget>[
            Container(
              child: SizedBox(
                child: Image.asset("assets/images/iw-icon.png"),
                height: 60,
                width: 60,
              ),
            ),
            Text(
              AppConfig.appName,
              style: GoogleFonts.megrim(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ));

    final emailField = TextFormField(
      decoration: InputDecoration(
        labelText: 'Usuário',
        labelStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(
          LineIcons.envelope,
          color: Colors.white,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
    );

    final passwordField = TextFormField(
      decoration: InputDecoration(
        labelText: 'Senha',
        labelStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(
          LineIcons.lock,
          color: Colors.white,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      keyboardType: TextInputType.text,
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      obscureText: true,
    );

    final loginForm = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[emailField, passwordField],
        ),
      ),
    );

    final loginBtn = Container(
      margin: EdgeInsets.only(top: 40.0),
      height: 50.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        border: Border.all(color: Colors.orange[400]),
        color: Colors.orange[400],
      ),
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => Navigator.pushNamed(context, homeViewRoute),
        color: Colors.orange[400],
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(7.0),
        ),
        child: Text(
          "Entrar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );

    final recuperarSenha = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, resetPasswordViewRoute),
        child: Text(
          'Deu PT e esqueceu a senha?',
          style: TextStyle(
            color: Colors.orange[400],
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );

    final separador = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Center(
        child: Text(
          'OU',
          style: TextStyle(
            color: Colors.white60,
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );

    final loginFacebook = Padding(
      padding: EdgeInsets.only(top: 10),
      child: Center(
          child: FlatButton.icon(
        onPressed: () => Navigator.of(context).pushNamed(homeViewRoute),
        icon: FaIcon(
          FontAwesomeIcons.facebookSquare,
          color: Colors.white,
        ),
        label: Text(
          'LOGAR COM O FACEBOOK',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      )),
    );

    final telaCadastro = Padding(
      padding: EdgeInsets.only(top: 10),
      child: Center(
          child: InkWell(
        onTap: () => Navigator.of(context).pushNamed(cadastroIndexViewRoute),
        child: Text(
          'Não possui conta? Cdastre-se',
          style: TextStyle(
            fontWeight: FontWeight.w100,
            fontSize: 15.0,
            color: Colors.white,
          ),
        ),
      )),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 150.0, left: 30.0, right: 30.0),
          decoration: BoxDecoration(gradient: primaryGradient),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              pageTitle,
              loginForm,
              recuperarSenha,
              loginBtn,
              separador,
              loginFacebook,
              telaCadastro,
            ],
          ),
        ),
      ),
    );
  }
}
