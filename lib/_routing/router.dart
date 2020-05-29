import 'package:flutter/material.dart';
import 'package:wipapp/_routing/routes.dart';
import 'package:wipapp/views/cadastroDataView.dart';
import 'package:wipapp/views/cadastroEmailView.dart';
import 'package:wipapp/views/cadastroSenhaView.dart';
import 'package:wipapp/views/cadastroTipoContaView.dart';
import 'package:wipapp/views/chat_details.dart';
import 'package:wipapp/views/home.dart';
import 'package:wipapp/views/indexView.dart';
import 'package:wipapp/views/loginView.dart';
import 'package:wipapp/views/cadastroNomeView.dart';
import 'package:wipapp/views/cadastroIndexView.dart';
import 'package:wipapp/views/reset_password.dart';
import 'package:wipapp/views/user_details.dart';

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
