import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_social/_routing/routes.dart';
import 'package:flutter_social/utils/colors.dart';
import 'package:flutter_social/utils/utils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class CadastroIndexPage extends StatefulWidget {
  @override
  _CadastroIndexState createState() => _CadastroIndexState();
}

class _CadastroIndexState extends State<CadastroIndexPage> {
  final _formKey = GlobalKey<FormState>();
  int _genderRadioBtnVal = -1;

  void _handleGenderChange(int value) {
    setState(() {
      _genderRadioBtnVal = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Change Status Bar Color
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: primaryColor),
    );

    final appBar = Padding(
      padding: EdgeInsets.only(bottom: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          )
        ],
      ),
    );

    final pageTitle = Container(
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

    final formFieldSpacing = SizedBox(
      height: 50.0,
    );

    final textoBotoesCima = Padding(
      padding: EdgeInsets.only(top: 5.0),
      child: Center(
        child: Text(
          'Selecione uma opção',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
    );

    final botaoCadastro = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.orange[300]),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(7.0),
          color: Colors.orange[400],
          elevation: 5.0,
          shadowColor: Colors.orange[300],
          child: FlatButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(cadastroNomeViewRoute),
              child: Row(
                children: <Widget>[
                  Container(
                    child: SizedBox(
                      child: Image.asset("assets/images/iw-icon.png"),
                      height: 56,
                      width: 56,
                    ),
                  ),
                  Text(
                    'CRIAR UM NOVO PERFIL',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  )
                ],
              )),
        ),
      ),
    );

    final separador = Padding(
      padding: EdgeInsets.only(top: 5.0),
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

    final botaoFacebook = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.blue[200]),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(7.0),
          color: Colors.blueAccent,
          elevation: 5.0,
          shadowColor: Colors.blue[200],
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
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(gradient: primaryGradient),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 40.0),
          child: Column(
            children: <Widget>[
              appBar,
              Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    pageTitle,
                    formFieldSpacing,
                    textoBotoesCima,
                    botaoCadastro,
                    separador,
                    botaoFacebook
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFormField(String label, IconData icon) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.black),
        prefixIcon: Icon(
          icon,
          color: Colors.black38,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black38),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
        ),
      ),
      keyboardType: TextInputType.text,
      style: TextStyle(color: Colors.black),
      cursorColor: Colors.black,
    );
  }
}
