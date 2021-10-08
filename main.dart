import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff141414),
        ),
      ),
      home: const OpenAimated(),
      routes: {
        "Test": (context) => Test(),
        "OpenAimated": (context) => const OpenAimated(),
      },
    );
  }
}


class OpenAimated extends StatefulWidget {
  const OpenAimated({Key? key}) : super(key: key);

  @override
  _OpenAimatedState createState() => _OpenAimatedState();
}

class _OpenAimatedState extends State<OpenAimated> {
  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: OpenContainer(
            transitionDuration: const Duration(milliseconds: 2500),
            openBuilder: (context, _) => Test(),
            closedShape: const CircleBorder(),
            closedBuilder: (context, openContainer) => Container(
                height: 56,
                width: 56,
                child: const Icon(
                  Ionicons.arrow_up_outline,
                  color: Colors.black,
                  size: 30,
                )),
          ),
        ),
        appBar: AppBar(
          title: const Text("OpenAnimated Part 1"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.only(
                  top: 20, left: 40, right: 40, bottom: 20),
              child: OpenContainer(
                  closedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  transitionDuration: const Duration(milliseconds: 2200),
                  openBuilder: (context, _) => Test(),
                  openColor: Colors.red,
                  closedColor: Colors.red,
                  closedBuilder: (context, openContainer) => Container(
                        alignment: Alignment.center,
                        child: const Text(
                          "Go To New Page",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 33,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Ubuntu",
                          ),
                        ),
                      )),
            ),
          ],
        ));
  }
}

class Test extends StatefulWidget {
  Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                // color: Colors.red,
                width: wid,
                height: 350,
                child: SvgPicture.asset(
                  "images/wave8.svg",
                  fit: BoxFit.fill,
                ),
              ),
              // ! 0x00FFFFFF
              const Positioned(
                top: 100,
                left: 30,
                child: FadeAnimation(
                  2,
                  Text(
                    "Login Page",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              )
            ],
          ),
          // ! Here input

          Expanded(
            child: Container(
              // color: Colors.red,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    FadeAnimation(
                      2,
                      Container(
                          width: double.infinity,
                          height: 70,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xff4f1ed2), width: 1),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color(0xff4f1ed2),
                                    blurRadius: 10,
                                    offset: Offset(1, 1)),
                              ],
                              color: Colors.black,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(Icons.email_outlined),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: TextFormField(
                                    maxLines: 1,
                                    decoration: const InputDecoration(
                                      label: Text(" E-mail ..."),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                    FadeAnimation(
                      2,
                      Container(
                          width: double.infinity,
                          height: 70,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xff4f1ed2), width: 1),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color(0xff4f1ed2),
                                    blurRadius: 10,
                                    offset: Offset(1, 1)),
                              ],
                              color: Colors.black,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(Icons.password_outlined),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: TextFormField(
                                    maxLines: 1,
                                    decoration: const InputDecoration(
                                      label: Text(" Password ..."),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                      2,
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            onPrimary: const Color(0xff4f1ed2),
                            shadowColor: const Color(0xff4f1ed2),
                            elevation: 18,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Colors.purpleAccent,
                                Colors.deepPurpleAccent
                              ]),
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            width: 200,
                            height: 50,
                            alignment: Alignment.center,
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

