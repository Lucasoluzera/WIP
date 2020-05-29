import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wipapp/_routing/routes.dart';
import 'package:wipapp/utils/colors.dart';
import 'package:wipapp/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

import 'cadastroSenhaView.dart';

class CadastroEmailPage extends StatefulWidget {

  final String nomeUsuario;
  CadastroEmailPage({this.nomeUsuario});


  @override
  _CadastroEmailPage createState() => _CadastroEmailPage(nomeUsuario);
}

class _CadastroEmailPage extends State<CadastroEmailPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _nomeUsuario;
  _CadastroEmailPage(this._nomeUsuario);
  String _email;


  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Entre com um email válido';
    else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: primaryColor),
    );

    final appBar = Padding(
      padding: EdgeInsets.only(bottom: 10.0),
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

    final pageTitle = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Crie um email',
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.w300,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Text(
            'Caso de PT e esqueça a senha.',
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Esse será o email que receberá a senha.',
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );

    final formFieldSpacing = SizedBox(
      height: 30.0,
    );

    final nomeField = TextFormField(
      autofocus: true,
      validator: validateEmail,
      onSaved: (String value) {
        _email = value;
      },
      decoration: InputDecoration(
        fillColor: Colors.grey[1000],
        filled: true,
        contentPadding: EdgeInsets.all(8),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.grey[600]),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.grey[600]),
        ),
        hintText: "Email",
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
      ),
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
    );

    final submitBtn = Container(
      margin: EdgeInsets.only(top: 10.0),
      height: 50.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        border: Border.all(color: Colors.orange[400]),
        color: Colors.orange[400],
      ),
      child: RaisedButton(
        elevation: 5.0,
//        onPressed: () => Navigator.pushNamed(context, homeViewRoute),
        onPressed: () => {
          if (!_formKey.currentState.validate())
            {}
          else
            {
              _formKey.currentState.save(),
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CadastroSenhaPage(
                  nomeUsuario: _nomeUsuario,
                  email: _email))),
            }
        },
        color: Colors.orange[400],
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(7.0),
        ),
        child: Text(
          "Avançar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
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
          child: Form(
            key: _formKey,
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
                      nomeField,
                      submitBtn
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
