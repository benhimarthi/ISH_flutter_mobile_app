import 'package:flutter/material.dart';
import 'package:transport/CubitInterraction/IdentificationCubit.dart';
import 'package:transport/model/user.model.dart';
import 'package:transport/view/Profile/Circuit_views/SignIn.dart';
import 'package:transport/view/Profile/Circuit_views/Login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthentificationPage extends StatelessWidget {
  AuthentificationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Builder(builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context)!;
          return Scaffold(
            backgroundColor: const Color.fromRGBO(228, 237, 245, 1),
            appBar: AppBar(
              title: const Text("Authentification",
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.bold)),
              centerTitle: true,
              shadowColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              bottom: const TabBar(
                  tabs: [
                    Tab(
                      text: "Login",
                    ),
                    Tab(
                      text: "Sign in",
                    ),
                  ],
                  indicator: BoxDecoration(
                      color: Color.fromARGB(131, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5))),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  labelColor: Colors.black54,
                  labelStyle: TextStyle(fontWeight: FontWeight.w300)),
            ),
            body: TabBarView(children: [
              BlocBuilder<IdentificationCubit, Map>(
                builder: (context, state) {
                  context.read<IdentificationCubit>().emit({"user": User()});
                  return const SelectCircuit();
                },
              ),
              BlocBuilder<IdentificationCubit, Map>(
                builder: (context, state) {
                  context.read<IdentificationCubit>().emit({"user": User()});
                  return const SearchCircuit();
                },
              )
            ]),
          );
        }));
  }
}
