import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class developers extends StatelessWidget {
  const developers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    Future<void> goToWebPage(String urlString) async {
      final Uri _url = Uri.parse(urlString);
      if (!await launchUrl(_url)) {
        throw 'Could not launch $_url';
      }
    }
    return  Container(
      color: Color(0xff252525),
     child: Column(
       children: [
         SizedBox(
           height: 15,
         ),
         Expanded(
           flex: 1,
             child:
         Text('MEET THE TEAM',
         style: TextStyle(
           fontSize: 24,
           color: Colors.white,
           fontWeight: FontWeight.bold,
           letterSpacing: 4,
         ),)),
         Expanded(
           flex: 14,
           child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.height / 1000,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xffef9a19),
                  ),
                  height: h*0.5,
                  padding: const EdgeInsets.all(5),

                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        // child: Image(
                        //   image: AssetImage('assest/img1.jpeg'),
                        // ),
                        backgroundImage: AssetImage('assest/aditi.jpeg'),
                      ),
                      SizedBox(
                        height: h*0.010,
                      ),
                      Text('Aditi Date',
                      style: TextStyle(
                        fontSize: 18
                      ),),
                      Row(
                        children: [
                          IconButton(onPressed:(){
                            goToWebPage('https://github.com/ADITI152003');
                          }, icon: Icon(FontAwesomeIcons.github)),
                          IconButton(onPressed:(){
                            goToWebPage('https://www.linkedin.com/in/aditi-date-43a16022a');
                          }, icon: Icon(FontAwesomeIcons.linkedin)),
                          IconButton(onPressed:(){
                            goToWebPage('https://instagram.com/aditidate_1509?igshid=ZGUzMzM3NWJiOQ==');
                          }, icon: Icon(FontAwesomeIcons.instagram)),
                        ],

                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xffef9a19),
                  ),
                  height: h*0.5,
                  padding: const EdgeInsets.all(5),
                  //color: Color(0xffef9a19),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        // child: Image(
                        //   image: AssetImage('assest/img1.jpeg'),
                        // ),
                        backgroundImage: AssetImage('assest/Swapnil.jpeg'),
                      ),
                      SizedBox(
                        height: h*0.010,
                      ),
                      Text('Swapnil Adsul',
                        style: TextStyle(
                            fontSize: 18
                        ),),
                      Row(
                        children: [
                          IconButton(onPressed:(){
                            goToWebPage('https://github.com/swap2728');
                          }, icon: Icon(FontAwesomeIcons.github)),
                          IconButton(onPressed:(){
                            goToWebPage('https://www.linkedin.com/in/swapnil-adsul-139515230');
                          }, icon: Icon(FontAwesomeIcons.linkedin)),
                          IconButton(onPressed:(){
                            goToWebPage('https://instagram.com/swapnil_31003?igshid=MjEwN2IyYWYwYw==');
                          }, icon: Icon(FontAwesomeIcons.instagram)),
                        ],

                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xffef9a19),
                  ),
                  height: h*0.5,
                  padding: const EdgeInsets.all(5),
                  //color: Color(0xffef9a19),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        // child: Image(
                        //   image: AssetImage('assest/img1.jpeg'),
                        // ),
                        backgroundImage: AssetImage('assest/Renuka.jpeg'),
                      ),
                      SizedBox(
                        height: h*0.010,
                      ),
                      Text('Renuka Dad',
                        style: TextStyle(
                            fontSize: 18
                        ),),
                      Row(
                        children: [
                          IconButton(onPressed:(){
                            goToWebPage('https://github.com/renukadaad');
                          }, icon: Icon(FontAwesomeIcons.github)),
                          IconButton(onPressed:(){
                            goToWebPage('https://www.linkedin.com/in/renuka-dad-1129ab22a');
                          }, icon: Icon(FontAwesomeIcons.linkedin)),
                          IconButton(onPressed:(){
                            goToWebPage('https://instagram.com/renuka_daad?igshid=MmIzYWVlNDQ5Yg==');
                          }, icon: Icon(FontAwesomeIcons.instagram)),
                        ],

                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xffef9a19),
                  ),
                  height: h*0.5,
                  padding: const EdgeInsets.all(5),
                  //color: Color(0xffef9a19),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        // child: Image(
                        //   image: AssetImage('assest/img1.jpeg'),
                        // ),
                        backgroundImage: AssetImage('assest/Shivraj.jpeg'),
                      ),
                      SizedBox(
                        height: h*0.010,
                      ),
                      Text('Shivraj Bhosale',
                        style: TextStyle(
                            fontSize: 18
                        ),),
                      Row(
                        children: [
                          IconButton(onPressed:(){
                            goToWebPage('https://github.com/shivraj-bhosale');
                          }, icon: Icon(FontAwesomeIcons.github)),
                          IconButton(onPressed:(){
                            goToWebPage('https://www.linkedin.com/in/shivraj-bhosale-750905229/');
                          }, icon: Icon(FontAwesomeIcons.linkedin)),
                          IconButton(onPressed:(){
                            goToWebPage('https://instagram.com/shivv_1412?igshid=NGExMmI2YTkyZg==');
                          }, icon: Icon(FontAwesomeIcons.instagram)),
                        ],

                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xffef9a19),
                  ),
                  height: h*0.5,
                  padding: const EdgeInsets.all(5),
                  //color: Color(0xffef9a19),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        // child: Image(
                        //   image: AssetImage('assest/img1.jpeg'),
                        // ),
                        backgroundImage: AssetImage('assest/Shivam.jpeg'),
                      ),
                      SizedBox(
                        height: h*0.010,
                      ),
                      Text('Shivam Bhattad',
                        style: TextStyle(
                            fontSize: 18
                        ),),
                      Row(
                        children: [
                          IconButton(onPressed:(){
                            goToWebPage('https://pub.dev/packages/url_launcher');
                          }, icon: Icon(FontAwesomeIcons.github)),
                          IconButton(onPressed:(){
                            goToWebPage('https://pub.dev/packages/url_launcher');
                          }, icon: Icon(FontAwesomeIcons.linkedin)),
                          IconButton(onPressed:(){
                            goToWebPage('https://pub.dev/packages/url_launcher');
                          }, icon: Icon(FontAwesomeIcons.instagram)),
                        ],

                      )
                    ],
                  ),
                ),
                // Container(
                //   padding: const EdgeInsets.all(8),
                //   color: Colors.teal[600],
                //   child: const Text('Revolution, they...'),
                // ),
              ],
            ),
         ),
       ],
     ),
    );
  }
}
