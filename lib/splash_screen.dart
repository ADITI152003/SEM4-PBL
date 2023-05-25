
// import these Packages in pubspec.yaml file.
// dependencies:
//
//   animated_text_kit:

// import 'lib.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/login_page.dart';
import 'dart:async';
import 'main.dart';
import 'package:untitled3/main.dart';

class MyCustomWidget extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return SecondPage();
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // get child => null;

  @override
  void initState() {
    super.initState();

    Timer(Duration(milliseconds: 400), () {
      setState(() {
        _a = true;
      });
    });
    Timer(Duration(milliseconds: 400), () {
      setState(() {
        _b = true;
      });
    });
    Timer(Duration(milliseconds: 1300), () {
      setState(() {
        _c = true;
      });
    });
    Timer(Duration(milliseconds: 1700), () {
      setState(() {
        _e = true;
      });
    });
    Timer(Duration(milliseconds: 3400), () {
      setState(() {
        _d = true;
      });
    });
    Timer(Duration(milliseconds: 3850), () {
      setState(() {
        Navigator.of(context).pushReplacement(
          ThisIsFadeRoute(
            route: ThirdPage(), page: ThirdPage(),
          ),
        );
      });
    });
  }

  bool _a = false;
  bool _b = false;
  bool _c = false;
  bool _d = false;
  bool _e = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _h = MediaQuery.of(context).size.height;
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: _d ? 900 : 2500),
              curve: _d ? Curves.fastLinearToSlowEaseIn : Curves.elasticOut,
              height: _d ? 0 : _a ? _h / 2 : 100,
              width: 600,
              padding: EdgeInsets.only(left: 30),
              child: Image.asset("assest/logo.png",scale: 1/16,),
              // color: Colors.deepPurpleAccent,
            ),
            AnimatedContainer(
              // margin: EdgeInsets.only(bottom: /0),
              duration: Duration(
                  seconds: _d ? 1 : _c ? 2 : 0),
              curve: Curves.fastLinearToSlowEaseIn,
              height: _d ? _h : _c ? 140 : 20,
              width: _d ? _w : _c ? 300 : 100,
              decoration: BoxDecoration(
                  color: _b ? Colors.black : Colors.transparent,
                  // shape: _c? BoxShape.rectangle : BoxShape.circle,
                  borderRadius: _d ? BorderRadius.only() : BorderRadius.circular(10)),
              child: Column(
                children: [
                  //
                  //  SizedBox(height: 100,),
                  Center(
                    child: _e ? Stack(
                      children: <Widget>[
                        // Center(child: Image.asset("assets/images/logo.png",height: 20,),),
                        // SizedBox(height: 30,),
                        Expanded(
                          // padding: EdgeInsets.only(top: 10),
                          child: Center(
                            child: AnimatedTextKit(
                              totalRepeatCount: 1,
                              animatedTexts: [
                                FadeAnimatedText(
                                  'InvenTrack',textAlign: TextAlign.center,
                                  duration: Duration(milliseconds: 1700),
                                  textStyle: TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                        : SizedBox(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ThisIsFadeRoute extends PageRouteBuilder {
  final Widget page;
  final Widget route;

  ThisIsFadeRoute({required this.page, required this.route})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        FadeTransition(
          opacity: animation,
          child: route,
        ),
  );
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}
//
//
// Center(
// child: Image.asset("assets/images/logo.png",height: 20,),
// ),