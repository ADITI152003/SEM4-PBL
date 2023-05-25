import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:untitled3/api_/user_sheet_api.dart';
import 'data_t.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'model/user.dart';
class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  Widget build(BuildContext context) {
    String h='';
    double pad=MediaQuery.of(context).size.width*0.05;
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              // image:DecorationImage(
              //   image: AssetImage('assest/bg.png'),
              //   fit: BoxFit.cover,
              // ),
            color: Color(0xff252525)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(pad, 6, 3, 8),
                    child: Icon(FontAwesomeIcons.heart,
                    size: 15,
                    color: Colors.white54,),
                  ),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(0, 16

                        , 0, 16),
                    child: Text(
                      'Top Picks',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white54
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,

                      // child: Row(
                        children: [
                          GestureDetector(
                            onTap: () async{
                              // User? p;
                              final p = await UserSheetsApi.getById(2);
                              String? k=p?.milk;


                              print(k);
                              int? j=int.parse(k!);
                              j=j-10;
                              UserSheetsApi.updateCell(id: (2), key: 'milk', value: j);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color:Colors.white54,
                                borderRadius: BorderRadius.circular(7),
                              ),
                              width: MediaQuery.of(context).size.width*0.75,
                              height: MediaQuery.of(context).size.height*0.25,
                              margin: EdgeInsets.only(left:pad ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image(
                                  image: AssetImage('assest/img1.jpeg',
                                  ),
                                    fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color:  Colors.white54,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            width: MediaQuery.of(context).size.width*0.75,
                            height: MediaQuery.of(context).size.height*0.25,
                            margin: EdgeInsets.only(left: pad),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Image(
                                image: AssetImage('assest/img6.jpeg'),
                                fit: BoxFit.fill,
                              ),
                            ),


                          ),
                          GestureDetector(
                            onTap: (){
                              print('Dialogue 2');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white54,
                                borderRadius: BorderRadius.circular(7),
                              ),
                              width: MediaQuery.of(context).size.width*0.75,
                              height: MediaQuery.of(context).size.height*0.25,
                              margin: EdgeInsets.only(left: pad),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image(
                                  image: AssetImage('assest/img7.jpeg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color:  Colors.white54,
                            ),
                            width: MediaQuery.of(context).size.width*0.75,
                            height: MediaQuery.of(context).size.height*0.25,
                            margin: EdgeInsets.only(left: pad),
                            child:  Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Image(
                                image: AssetImage('assest/img10.jpeg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),

                        ],
                      // ),

                    ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 9,
                child: Container(

                  child: ListView.builder(
                      itemCount:data.length,
                      itemBuilder: (context,index)
                    {
                      return Padding(padding:EdgeInsets.all(5),
                        child: Container(

                          decoration: BoxDecoration(
                            // gradient: LinearGradient(
                            //   begin: Alignment.bottomCenter,
                            //   end:Alignment.topCenter,
                            //   stops: [0.1,0.4,0.9],
                            //   colors: [
                            //     //Colors.white12,
                            //     Color(0xffE3F2C1),
                            //     Color(0xffC9DBB2),
                            //     Color(0xffAAC8A7),
                            //
                            //   ]
                            // ),
                            color: Color(0xffef9a19),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color.fromRGBO(0, 128, 0, 0)),
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(7),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child:GestureDetector(
                                      child: Container(
                              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                          child: Text(data[index].name,textAlign: TextAlign.left,
                                              style: TextStyle(

                                                  fontSize: 20,color:Colors.black,fontWeight: FontWeight.normal,
                                              fontFamily: 'RubikPuddles'
                                              ),
                                          ),
                                      ),
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (ctx) => AlertDialog(

                                            title:  Text("IS THIS SOLD???"),
                                            content: const Text("If yes click okay"),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () async {
                                                  final p = await UserSheetsApi.getById(index+1);
                                                  final milk = await UserSheetsApi.getById(16);
                                                  final suger = await UserSheetsApi.getById(17);
                                                  final icewater = await UserSheetsApi.getById(18);
                                                  final choco = await UserSheetsApi.getById(19);
                                                  int l=int.parse((milk?.total)!)-int.parse((p?.milk)!);
                                                  int r=int.parse((p?.total)!)-1;
                                                  if(l<0||
                                                      r<0 ||
                                                      int.parse((p?.flavour_qt)!)-1<0 ||
                                                      int.parse((suger?.total)!)-int.parse((p?.suger_qt)!)<0 ||
                                                      int.parse((icewater?.total)!)-int.parse((p?.iced_water)!)<0) {
                                                    Navigator.of(ctx).pop();
                                                    showDialog<String>(
                                                        context: context,
                                                        builder: (
                                                            BuildContext context) =>
                                                            AlertDialog(
                                                              title: const Text(
                                                                  'Sufficient item not available'),
                                                              content: const Text(
                                                                  'Please fill stock !!!'),
                                                              actions: <
                                                                  Widget>[
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator
                                                                          .pop(
                                                                          context,
                                                                          'Cancel'),
                                                                  child: const Text(
                                                                      'Cancel'),
                                                                ),
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator
                                                                          .pop(
                                                                          context,
                                                                          'OK'),
                                                                  child: const Text(
                                                                      'OK'),
                                                                ),
                                                              ],
                                                            )
                                                    );
                                                  }
                                                  else{
                                                  UserSheetsApi.updateCell(id: (16), key: 'total', value:int.parse((milk?.total)!)-int.parse((p?.milk)!));
                                                  UserSheetsApi.updateCell(id: (index+1), key: 'total', value:int.parse((p?.total)!)-1);
                                                  UserSheetsApi.updateCell(id: (index+1), key: 'quanty ice cream', value:int.parse((p?.flavour_qt)!)-1);
                                                  UserSheetsApi.updateCell(id: (17), key: 'total', value:int.parse((suger?.total)!)-int.parse((p?.suger_qt)!));
                                                  UserSheetsApi.updateCell(id: (18), key: 'total', value:int.parse((icewater?.total)!)-int.parse((p?.iced_water)!));
                                                  Navigator.of(ctx).pop();}
                                                },
                                                child: Container (
                                                  color: Colors.blue,
                                                  padding: const EdgeInsets.all(10),
                                                  child: const Text("okay"),
                                                  // onPressed: () async{Navigator.of(ctx).pop();},
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                   Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                           height: 90.0,
                                           width: 120.0,
                                           decoration: BoxDecoration(
                                             image: DecorationImage(
                                               image: AssetImage(
                                                   'assest/img$index.jpeg'),
                                               fit: BoxFit.fill,
                                             ),
                                             // shape: BoxShape.circle,
                                             borderRadius: BorderRadius.circular(15),
                                             // border: Border.all(
                                             //   width: 0,
                                             //   //color: Colors.black,
                                             // )
                                           ),
                                        ),
                                      ),
                                  )
                                ],
                              ),
                            ),

                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),

    );
  }
}
// showAlertDialog(BuildContext context) {
//   // Create button
//   Widget okButton = ElevatedButton(
//     // child: Text("OK"),
//     // onPressed: () {
//     //   //Navigator.of(context).pop();
//     // },
//
//   );
//
//   // Create AlertDialog
//   AlertDialog alert = AlertDialog(
//     title: Text("Simple Alert"),
//     content: Text("This is an alert message."),
//     actions: [
//       okButton,
//     ],
//   );
//
//   // show the dialog
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
// }
