
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter_social/_routing/routes.dart';
import 'package:flutter_social/utils/colors.dart';
import 'package:flutter_social/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class CadastroDataPage extends StatefulWidget {
  @override
  _CadastroDataPage createState() => _CadastroDataPage();
}

class _CadastroDataPage extends State<CadastroDataPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _data;
  var _controllerData = new MaskedTextController(mask: '00/00/0000');

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
            'Adicione sua data de nascimento',
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.w300,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Text(
            'Lembrando esse é um aplicativo específico.',
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Você precisa ser maior de idade.',
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
      textAlign: TextAlign.center,
      autofocus: true,
      maxLength: 10,
      controller: _controllerData,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Informe uma senha.';
        }
      },
      onSaved: (String value) {
        _data = value;
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
        hintText: "Data",
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
      ),
      keyboardType: TextInputType.datetime,
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
              Navigator.pushNamed(context, cadastroTipoContaViewRoute),
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
