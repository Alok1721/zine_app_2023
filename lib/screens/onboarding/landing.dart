import 'package:flutter/material.dart';

import 'login_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Color(0xff268CCB),
              Color(0xff003D63),
            ],
          )),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: const [
                      //White Circle Size
                      CircleAvatar(
                        radius: 42.0,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          //Zine Logo Size
                          radius: 34.0,
                          backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage('assets/images/zine_logo.png'),
                        ),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Text(
                        "Robotics\nand\nResearch\nGroup",
                        style: TextStyle(
                            fontFamily: 'Poppins-ExtraBold',
                            height: 0.9,
                            letterSpacing: 0.3,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 100.0,
                  ),
                  const Text(
                    'DESIGN.\nCREATE.\nINNOVATE.\n',
                    style: TextStyle(
                      fontFamily: 'Poppins-Black',
                      height: 0.9,
                      letterSpacing: 0.3,
                      fontSize: 60.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 110.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(20.0)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Color(0xff0c72b0),
                              fontFamily: "Poppins",
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(20.0)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          "Explore",
                          style: TextStyle(
                              color: Color(0xff0c72b0),
                              fontFamily: "Poppins",
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}