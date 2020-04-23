import 'package:flutter/material.dart';
import 'package:flutter_social/_routing/routes.dart';
import 'package:flutter_social/views/cadastroDataView.dart';
import 'package:flutter_social/views/cadastroEmailView.dart';
import 'package:flutter_social/views/cadastroSenhaView.dart';
import 'package:flutter_social/views/cadastroTipoContaView.dart';
import 'package:flutter_social/views/chat_details.dart';
import 'package:flutter_social/views/home.dart';
import 'package:flutter_social/views/indexView.dart';
import 'package:flutter_social/views/loginView.dart';
import 'package:flutter_social/views/cadastroNomeView.dart';
import 'package:flutter_social/views/cadastroIndexView.dart';
import 'package:flutter_social/views/reset_password.dart';
import 'package:flutter_social/views/user_details.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case landingViewRoute:
      return MaterialPageRoute(builder: (context) => IndexPage());
    case homeViewRoute:
      return MaterialPageRoute(builder: (context) => HomePage());
    case loginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case cadastroNomeViewRoute:
      return MaterialPageRoute(builder: (context) => CadastroNomePage());
    case cadastroEmailViewRoute:
      return MaterialPageRoute(builder: (context) => CadastroEmailPage());
    case cadastroSenhaViewRoute:
      return MaterialPageRoute(builder: (context) => CadastroSenhaPage());
    case cadastroDataViewRoute:
      return MaterialPageRoute(builder: (context) => CadastroDataPage());
    case cadastroTipoContaViewRoute:
      return MaterialPageRoute(builder: (context) => CadastroTipoContaPage());
    case cadastroIndexViewRoute:
      return MaterialPageRoute(builder: (context) => CadastroIndexPage());
    case resetPasswordViewRoute:
      return MaterialPageRoute(builder: (context) => ResetPasswordPage());
    case chatDetailsViewRoute:
      return MaterialPageRoute(
          builder: (context) => ChatDetailsPage(userId: settings.arguments));
    case userDetailsViewRoute:
      return MaterialPageRoute(
          builder: (context) => UserDetailsPage(userId: settings.arguments));
      break;
    default:
      return MaterialPageRoute(builder: (context) => IndexPage());
  }
}
