import "package:flutter/material.dart";
import 'package:transport/CubitInterraction/IdentificationCubit.dart';
import 'package:transport/CubitInterraction/authentification.cubit.operations.dart';
import 'package:transport/view/FirstPage/first.page.dart';
import 'package:transport/view/Profile/Circuit_views/authentification.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(providers: [
        BlocProvider<IdentificationCubit>(
          create: (context) => IdentificationCubit({}),
        ),
        BlocProvider<AuthentificationCubit>(
          create: (context) => AuthentificationCubit({}),
        ),
      ], child: FirstPage()), //ProfileSelection(),
    );*/
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => IdentificationCubit({}))],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => FirstPage(),
          '/authentification': (context) => AuthentificationPage()
        },
      ),
    );
  }
}
