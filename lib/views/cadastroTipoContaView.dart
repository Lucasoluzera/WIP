import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wipapp/_routing/routes.dart';
import 'package:wipapp/utils/colors.dart';
import 'package:wipapp/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:scoped_model/scoped_model.dart';

class CadastroTipoContaPage extends StatefulWidget {
  String nomeUsuario;
  String email;
  String senha;
  String data;

  CadastroTipoContaPage({this.nomeUsuario, this.email, this.senha, this.data});

  @override
  _CadastroTipoContaPage createState() =>
      _CadastroTipoContaPage(nomeUsuario, email, senha, data);
}

class _CadastroTipoContaPage extends State<CadastroTipoContaPage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _nomeUsuario;
  String _email;
  String _senha;
  String _data;

  _CadastroTipoContaPage(
      this._nomeUsuario, this._email, this._senha, this._data);

  bool isChecked = false;
  Duration _duration = Duration(milliseconds: 370);
  Animation<Alignment> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: _duration);

    _animation =
        AlignmentTween(begin: Alignment.centerLeft, end: Alignment.centerRight)
            .animate(
      CurvedAnimation(
          parent: _animationController,
          curve: Curves.bounceOut,
          reverseCurve: Curves.bounceIn),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
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
            'Qual rolezeiro você é!',
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.w300,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
        ],
      ),
    );

    final formFieldSpacing = SizedBox(
      height: 30.0,
    );

    final gender = Center(
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Container(
            width: 110,
            height: 50,
            padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
            decoration: BoxDecoration(
                color: isChecked ? Colors.orange[400] : Colors.blueAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                      color: isChecked ? Colors.orange[400] : Colors.blueAccent,
                      blurRadius: 12,
                      offset: Offset(0, 8))
                ]),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: _animation.value,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_animationController.isCompleted) {
                          _animationController.reverse();
                        } else {
                          _animationController.forward();
                        }

                        isChecked = !isChecked;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );

    final informacoes = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              isChecked ? 'Comercial' : 'Comum',
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Text(
              isChecked
                  ? 'Possibilita criar roles brabos!!'
                  : 'Pode curtir igual, aproveite!!',
              style: GoogleFonts.roboto(
                color: Colors.grey,
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              isChecked
                  ? 'Apenas uma taxa de 5% para cada convite'
                  : 'Receba promoções dos melhores roles',
              style: GoogleFonts.roboto(
                color: Colors.grey,
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              isChecked
                  ? 'Não pode de forma nenhuma criar roles ruins!'
                  : 'Não pode passar o fim de semana em casa!',
              style: GoogleFonts.roboto(
                color: Colors.grey,
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
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
          if (_formKey.currentState.validate())
            {
//                Map<String, dynamic> usuarioData = {
//              "nomeUsuario": _nomeUsuario,
//              "email": _email,
//              "data": _data,
//              "tipoConta": isChecked,
//            };
//                model.cadastrar(
//                usuarioData: usuarioData,
//                senha: _senha,
//                sucesso: _sucesso,
//                falhou: _falhou
//            ),
            },
        },
        color: Colors.orange[400],
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(7.0),
        ),
        child: Text(
          "Finalizar",
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
                      gender,
                      informacoes,
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

  void sucesso() {}

  void falhou() {}
}
