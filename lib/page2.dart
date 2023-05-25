// import 'dart:html';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:untitled3/controller.dart';
import 'package:untitled3/model/user.dart';
import 'api_/user_sheet_api.dart';
import 'model/user.dart';

class Page2 extends StatefulWidget {
  // get user => null;

  // const Page2({Key? key, required}) : super(key: key);
  // final List<dynamic> temp;

  @override

  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  Controller controller = Controller();
  // var x =json.decode(response.body.toString());
  // set user(user) {}
    // late User user;

  List<dynamic> temp = [];
  bool isLoaded = true;
  void fillList()  async {
    setState(() {
      isLoaded = true;
    });
    temp = await Controller().getUser();
    setState(() {
      isLoaded = false;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    fillList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // getUser();
    print("hello ${controller.arr.length}");
    return isLoaded ? Center(child: CircularProgressIndicator(
    ),) :  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
        //     image: DecorationImage(
        //   image: AssetImage('assest/bg.png'),
        //   fit: BoxFit.cover,
        // ),
          color: Color(0xff252525)
        ),
        child: ListView.builder(
           shrinkWrap: true,
          itemCount: 19,
          itemBuilder: (context,int  index) {
            // getUser(index);
            // print(temp);
            // print(temp.length);
            // print("fdfd");
            return Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end:Alignment.topCenter,
                      stops: [0.1,0.4,0.5,0.9],
                      colors: [
                        Color(0xffef9a19),
                        // Colors.white38,
                        // Colors.white54,
                        Color(0xffef9a19),
                        Color(0xffef9a19),
                        Color(0xffef9a19),

                      ]
                  ),
                  // color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(18),
                  // border: Border.all(color: Colors.white),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                          //padding: const EdgeInsets.only(bottom:),
                          child: Center(
                            child: Text(
                              // 'asd',
                              temp[index].fruit,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 65,
                    ),
                    Expanded(
                      child: Container(
                       // user = widget.temp[9];
                        //padding: const EdgeInsets.only(bottom: 30),
                        child: Center(
                          child: Text(
                            temp[index].total,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff006400),
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
