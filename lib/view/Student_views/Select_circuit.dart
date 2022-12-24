/*import 'dart:js';

import 'package:flutter/material.dart';
import 'package:transport/CubitInterraction/IdentificationCubit.dart';

const List<Tab> tabs = <Tab>[
  Tab(text: 'Zeroth'),
  Tab(text: 'First'),
];

class CircuitSelect extends StatelessWidget {
  const CircuitSelect({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: IdentificationCubit({}));
    return Scaffold(
      appBar: AppBar(
          bottom: const TabBar(
        tabs: tabs,
      )),
      body: TabBarView(
        controller: ,
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:transport/CubitInterraction/IdentificationCubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transport/view/Student_views/UserSignIn.dart';
import 'package:transport/view/Student_views/UserSignUp.dart';
import 'package:custom_timer/custom_timer.dart';

const List<Tab> tabs = <Tab>[
  Tab(text: 'Sign in'),
  Tab(text: 'Sign up'),
];

class CircuitSelect extends StatelessWidget {
  CircuitSelect({super.key});
  Color cl = Colors.black;
  @override
  Widget build(BuildContext context) {
    final CustomTimerController _cnt = CustomTimerController();
    return DefaultTabController(
      length: 2,
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context)!;

        return Scaffold(
          backgroundColor: const Color.fromRGBO(228, 237, 245, 1),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            title: const Text(
              "Identification",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            bottom: const TabBar(
              indicator: BoxDecoration(
                  color: Color.fromARGB(131, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      topLeft: Radius.circular(5))),
              //indicatorColor: Colors.grey,
              labelColor: Colors.white,
              tabs: tabs,
              padding: EdgeInsets.only(left: 20, right: 20),
            ),
          ),
          body: TabBarView(
            children: tabs.map((Tab tab) {
              return Center(child: BlocBuilder<IdentificationCubit, Map>(
                builder: ((context, state) {
                  if (tabController.index == 0) {
                    //return UserSignIn();
                    return Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    );
                  } else {
                    return UserSignUp();
                  }
                }),
              ));
            }).toList(),
          ),
        );
      }),
    );
  }
}

/*
Container(
                      color: tabController.index == 1
                          ? const Color.fromARGB(31, 184, 63, 63)
                          : Colors.green,
                      width: 200,
                      height: 200,
                    )*/
