// ignore: file_name

import 'package:flutter/material.dart';

class ProfileSelectionBody extends StatelessWidget {
  const ProfileSelectionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color.fromARGB(226, 170, 200, 218),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            height: MediaQuery.of(context).size.height * .2,
            child: const Center(
                child: Text(
              "Chose your profile : ",
              style: TextStyle(
                  fontWeight: FontWeight.w100,
                  color: Color.fromARGB(255, 128, 126, 126)),
            )),
          ),
          Container(
              margin: const EdgeInsets.all(5),
              height: MediaQuery.of(context).size.height * .7,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Profil(
                        "assets/images/profile_images/student.png",
                        const Text("Student or teacher",
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Color.fromARGB(255, 128, 126, 126))),
                        50),
                    Profil(
                        "assets/images/profile_images/chauffeur.png",
                        const Text("Rider",
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Color.fromARGB(255, 128, 126, 126))),
                        50),
                  ],
                ),
              )),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5),
            child: GestureDetector(
                child: const Text(
              "Skip >>",
              style: TextStyle(color: Color.fromARGB(255, 15, 90, 230)),
              textAlign: TextAlign.end,
            )),
          )
        ],
      ),
    );
  }

  //Profile model
  Profil(String imgLink, Text title, double radius) {
    return GestureDetector(
        child: Container(
      margin: const EdgeInsets.all(10),
      child: Column(children: [
        CircleAvatar(
          backgroundImage: AssetImage(imgLink),
          radius: radius,
        ),
        Container(
          child: title,
        )
      ]),
    ));
  }
}
