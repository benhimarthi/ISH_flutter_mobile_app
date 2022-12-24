import "package:flutter/material.dart";
import 'package:transport/CubitInterraction/IdentificationCubit.dart';
import 'package:transport/view/FirstPage/first.page.dart';
import 'package:transport/view/Profile/Circuit_views/SelectionAction.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(providers: [
        BlocProvider<IdentificationCubit>(
          create: (context) => IdentificationCubit({}),
        )
      ], child: FirstPage()), //ProfileSelection(),
    );
  }
}
