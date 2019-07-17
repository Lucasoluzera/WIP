import 'package:flutter/material.dart';
import 'package:iwent/src/home/home-widget.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:iwent/src/app-bloc.dart';

const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){

    return BlocProvider(
      //add yours BLoCs controlles
      blocs: [
        Bloc((i) => AppBloc()),
      ],
      //your main widget 
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: white,
        ),
        home: HomeWidget(),
      ),
    );
  }
}