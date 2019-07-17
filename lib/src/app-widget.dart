import 'package:flutter/material.dart';
import 'package:iwent/src/home/home-widget.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:iwent/src/app-bloc.dart';

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
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: HomeWidget(),
      ),
    );
  }
}