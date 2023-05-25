import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  // child: new Image.asset(
                  //   'assest/bg.png',fit: BoxFit.cover,height: double.infinity,width: double.infinity,
                  // ),
                  // height: double.infinity,
                  // width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff252525)
                  ),
                ),
                SafeArea(
                  child: Center(
                    child: GlassmorphicContainer(
                      width: double.infinity,
                      height: double.infinity,
                      borderRadius:0,
                      blur: 0,
                      alignment: Alignment.bottomCenter,
                      border: 2,
                      linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFE3F2C1).withOpacity(0.1),
                            Color(0xFFE3F2C1).withOpacity(0.05),
                          ],
                          stops: [
                            0.1,
                            1,
                          ]),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.5),
                          Color((0xFFFFFFFF)).withOpacity(0.5),
                        ],
                      ),
                      child:Column(

                        children: <Widget>[
                          Align(
                            alignment: Alignment.center,
                            child: Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: CircleAvatar(
                                  radius: 70,
                                  backgroundColor: Color(0XFFCACACA),
                                  backgroundImage: AssetImage('assest/image 8.png'),
                                ),
                              ),
                            ),
                          ),
                          // Container(
                          //
                          //   decoration: BoxDecoration(
                          //     color: Color(0xffE3F2C1),
                          //     borderRadius: BorderRadius.circular(10),
                          //   ),
                          //   width: 140,
                          //   height: 30,
                          //
                          //   child: Align(
                          //     alignment: Alignment.center,
                          //
                          //     child: Row(
                          //       mainAxisAlignment: MainAxisAlignment.center,
                                // children: <Widget>[
                                //
                                //   Text(
                                //     "BAKER XYZ",
                                //     style: TextStyle(
                                //       fontSize: 15,
                                //       color: Colors.black,
                                //     ),
                                //   ),
                                //   SizedBox(
                                //     width: 10,
                                //   ),
                                //   Icon(
                                //     Icons.edit,
                                //   )
                                // ],
                             // ),
                          //   ),
                          // ),


                          Expanded(

                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color:Color(0xffef9a19),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Column(

                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: <Widget>[

                                    Expanded(
                                        child: Row(
                                          children: [
                                            Icon(Icons.favorite),
                                            SizedBox(
                                              width: 25,
                                            ),
                                            Text("MANGO JUICE",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black
                                              ),),
                                          ],
                                        )
                                    ),
                                    SizedBox(
                                      child: Container(
                                        height: 1,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xff252525),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.date_range,
                                          ),
                                          SizedBox(
                                            width: 25,
                                          ),
                                          Text("19/5/2023",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                            ),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        height: 1,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xff252525),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      // child: Icon(
                                      //   Icons.phone,
                                      // ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.phone,
                                          ),
                                          SizedBox(
                                            width: 25,
                                          ),
                                          Text("7349959135",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                            ),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        height: 1,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xff252525),
                                        ),
                                      ),
                                    ),

                                    Expanded(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_rounded,
                                          ),
                                          SizedBox(
                                            width: 25,
                                          ),
                                          Text("PICT ,Pune",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                            ),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        height: 1,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Color(0xff252525),
                                        ),
                                      ),
                                    ),
                                    // SizedBox(
                                    //   height: 20,
                                    // ),

                                    Expanded(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.email,
                                          ),
                                          SizedBox(
                                            width: 25,
                                          ),
                                          Text("shivraj@gmail.com",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                            ),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        height: 1,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Color(0xff252525),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.logout,
                                          ),
                                          SizedBox(
                                            width: 25,
                                          ),
                                          Text("Logout",
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                            ),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ),
    );
    }
}