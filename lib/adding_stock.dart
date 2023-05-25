// import 'dart:html';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:untitled3/controller.dart';
import 'package:untitled3/model/user.dart';
import 'api_/user_sheet_api.dart';
import 'model/user.dart';

class Page3 extends StatefulWidget {
  // get user => null;

  // const Page2({Key? key, required}) : super(key: key);
  // final List<dynamic> temp;

  @override

  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  // Controller controller = Controller();
  // var value;
    TextEditingController value = TextEditingController();
int h=0;
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
    // print("hello ${controller.arr.length}");
    return isLoaded ? Center(child: CircularProgressIndicator(
    ),) :  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            // image: DecorationImage(
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
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end:Alignment.topCenter,
                      stops: [0.1,0.4,0.5,0.9],
                      colors: [
                        // Colors.white12,
                        // Colors.white38,
                        // Colors.white54,
                        // Colors.white60,
                      Color(0xffef9a19),
                        Color(0xffef9a19),
                        Color(0xffef9a19),
                        Color(0xffef9a19),
                      ]
                  ),
                  //color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(18),
                  //border: Border.all(color: Colors.white),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            //padding: const EdgeInsets.only(bottom: 30),
                            child: Text(
                              // 'asd',
                              temp[index].fruit,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  //fontWeight: FontWeight.w900
                                ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        ElevatedButton(
                          onPressed: (){
                            showDialog(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                title: const Text("add what u want to add sir"),
                                // content: const Text("You have raised a Alert Dialog Box"),
                                actions: <Widget>[
                                  TextField(
                                    controller: value,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration (
                                      labelText: 'Enter the count',
                                    ),
                                  ),
                                    ElevatedButton(
                                      // color: Colors.blue,
                                      // padding: const EdgeInsets.all(14),
                                      onPressed: () async {
                                        print(value.text);
                                        final p = await UserSheetsApi.getById(index+1);
                                        // int k=value as int;
                                        // print(k);
                                        print(int.parse((p?.total)!));
                                        UserSheetsApi.updateCell(id: (index+1), key: 'total', value:(int.parse(value.text) + int.parse((p?.total)!)));
                                        Navigator.of(ctx).pop();
                                        value.clear();
                                        },
                                      child:  ( Text("okay")),

                                    ),
                                ],
                              ),
                            );
                          },
                            child: Text('Add',),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                          ),
                        )

                        // Center(
                        //   child: Container(
                        //     height: 120.0,
                        //     width: 120.0,
                        //     decoration: BoxDecoration(
                        //         image: const DecorationImage(
                        //           image: AssetImage('assest/image111.jpg'),
                        //           fit: BoxFit.fill,
                        //         ),
                        //         // shape: BoxShape.circle,
                        //         borderRadius: BorderRadius.circular(20),
                        //         border: Border.all(
                        //           width: 3,
                        //           color: Colors.black,
                        //         )),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
