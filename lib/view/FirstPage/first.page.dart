//import 'dart:html';

import "package:flutter/material.dart";
import 'package:transport/CubitInterraction/IdentificationCubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Profile/Circuit_views/SelectionAction.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IdentificationCubit idc = context.read<IdentificationCubit>();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 67, 191, 218),
      body: Center(
          child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .85,
              margin: const EdgeInsets.all(10),
              color: Colors.transparent,
              child: Column(children: [
                Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Colors.amber,
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/logo/appLogo.png")),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 122, 122, 122),
                              offset: Offset(.01, 1.5),
                              blurRadius: 1.4)
                        ]),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .4,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: const [
                        Text(
                          "Want to study in Morocco?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              fontFamily: "glory",
                              color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "Tired of surfing online searching for universities informations in vain?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "glory", color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "You're to the right place!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "glory", color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  //height: 85,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(children: [
                      Container(
                          width: 180,
                          height: 40,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(bottom: 25),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(.01, 1.5),
                                    blurRadius: 1.4)
                              ]),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                idc.emit({"pageId": 1});
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SelectCircuitPage()));
                              },
                              child: const Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 67, 191, 218),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )),
                      Container(
                          width: 180,
                          height: 40,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(bottom: 25),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 107, 107, 107),
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(.01, 1.5),
                                    blurRadius: 1.4)
                              ]),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                idc.emit({"pageId": 2});
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SelectCircuitPage()));
                              },
                              child: const Center(
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ))
                    ]),
                  ),
                )
              ]))),
    );
  }
}
