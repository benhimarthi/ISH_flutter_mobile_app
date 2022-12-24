import 'package:flutter/material.dart';

class SearchCircuit extends StatelessWidget {
  const SearchCircuit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .98,
          padding: const EdgeInsets.all(10),
          //height: MediaQuery.of(context).size.height * .5,
          margin: const EdgeInsets.only(bottom: 100),
          decoration: BoxDecoration(
              color: const Color.fromARGB(131, 255, 255, 255),
              borderRadius: BorderRadius.circular(5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .94,
                height: 40,
                margin: const EdgeInsets.only(bottom: 25),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 221, 221, 221),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Full name",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .94,
                height: 40,
                margin: const EdgeInsets.only(bottom: 25),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 221, 221, 221),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email adress",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width * .94,
                  height: 40,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(bottom: 25),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 221, 221, 221),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                  )),
              Container(
                  width: MediaQuery.of(context).size.width * .94,
                  height: 40,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(bottom: 25),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 221, 221, 221),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Conform password",
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                  )),
              Container(
                  width: MediaQuery.of(context).size.width * .94,
                  height: 40,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(bottom: 25),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 67, 191, 218),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(.01, 1.5),
                            blurRadius: 1.4)
                      ]),
                  child: Center(
                    child: GestureDetector(
                      child: const Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )),
              Container(
                  width: MediaQuery.of(context).size.width * .94,
                  height: 40,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(bottom: 25),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(.01, 1.5),
                            blurRadius: 1.4)
                      ]),
                  child: Center(
                    child: GestureDetector(
                      child: Center(
                          child: Stack(
                        children: const [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Register with google",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 67, 191, 218),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Image(
                                image: AssetImage(
                                    "assets/images/logo/search.png")),
                          )
                        ],
                      )),
                    ),
                  ))
            ],
          ),
        ),
        /*SizedBox(
          width: MediaQuery.of(context).size.width * .96,
          height: 60,
          child: Center(
            child: Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 59,
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                        child: const Text(
                      "Skip",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w400),
                    )),
                    GestureDetector(
                        child: const Icon(
                      Icons.arrow_right,
                      color: Color.fromRGBO(173, 202, 228, 1),
                    ))
                  ],
                ),
              ),
            ),
          ),
        )*/
      ],
    );
  }
}
