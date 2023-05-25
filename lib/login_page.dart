import 'package:flutter/material.dart';
import 'package:untitled3/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MyStatefulWidget(),
    );
  }
}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool Z=false;
  bool checkpassword(String user,String passw)
  {
    if(user=="aditi" && passw=="aditi#9226")
    {
      return true;
    }
    else {
      return false;
    }
  }
  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image:DecorationImage(
              image: AssetImage('assest/bgl1.jpeg'),
              fit: BoxFit.fill,
            ),
            color: Color(0xffC9DBB2)
          ),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                 height: h*0.35,
                ),
                Container(
                  //: const EdgeInsets.all(10),
                  width: w*0.9,
                  margin: EdgeInsets.fromLTRB(15, 5, 10, 5),
                  decoration: BoxDecoration(
                      color: Color(0xff252525),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(color: Colors.black.withOpacity(0.9))),

                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: TextField(
                      style: const TextStyle(color: Color(0xffef9a19)),
                      controller: nameController,
                      decoration: const InputDecoration(

                          labelText: 'User Name',
                          labelStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.white54
                          )),
                    ),
                  ),
                ),
                Container(
                  width: w*0.9,
                  //: const EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                      color: Color(0xff252525),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(color: Colors.black.withOpacity(0.9))),

                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: TextField(
                      style: const TextStyle(color: Color(0xffef9a19)),
                      controller: passwordController,
                      decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.white54
                          )),
                    ),
                  ),
                ),

                Container(

                    height: 75,
                    padding: const EdgeInsets.fromLTRB(20, 20, 35, 0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shadowColor:MaterialStatePropertyAll<Color>(
                            Colors.black.withOpacity(0.9)),
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.green.withOpacity(0.9))),
                      child: Text(
                        'BEGIN',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      onPressed: () {
                        //  Z=checkpassword(nameController.text, passwordController.text);
                        // if(Z==true)
                        //   {
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage()));

                            });
                        //   }
                        // else
                        //   {
                        //     showDialog<String>(
                        //         context: context,
                        //         builder: (BuildContext context) => AlertDialog(
                        //       title: const Text('Incorrect username and password'),
                        //       content: const Text('Try again !!!'),
                        //       actions: <Widget>[
                        //         TextButton(
                        //           onPressed: () => Navigator.pop(context, 'Cancel'),
                        //           child: const Text('Cancel'),
                        //         ),
                        //         TextButton(
                        //           onPressed: () => Navigator.pop(context, 'OK'),
                        //           child: const Text('OK'),
                        //         ),
                        //       ],
                        //     ),
                        //     );
                        //   }
                            nameController.clear();
                        passwordController.clear();
                      },
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
