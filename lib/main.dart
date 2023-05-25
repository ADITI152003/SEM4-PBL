import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:untitled3/adding_stock.dart';
import 'package:untitled3/api_/user_sheet_api.dart';
import 'package:untitled3/page1.dart';
import 'package:untitled3/page2.dart';
import 'package:untitled3/login_page.dart';
import 'package:untitled3/profile_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:untitled3/splash_screen.dart';
import 'controller.dart';
import 'sample.dart';
import 'addstock.dart';
import 'Developerpage.dart';
Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await UserSheetsApi.init();
  // Controller controller = Controller();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        // theme: ThemeData(
        //     brightness: Brightness.light,
        //     primarySwatch: Colors.blue,
            //fontFamily: 'Roboto',
            // textTheme: TextTheme(
            //   headline1: TextStyle(fontFamily: 'Roboto-SemiBold', fontSize: 20.0),
            //   button: TextStyle(fontFamily: 'Roboto-SemiBold', fontSize: 14.0, letterSpacing: 1.25),
            // )),
        debugShowCheckedModeBanner: false,
        title: 'Inventory',
          home: MyCustomWidget(),
        );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final screen = [
      Page1(),
      Page2(),
      ProfilePage(),
      // Blank(),
      Page3(),
      developers(),
      // page3(),
      // page4(),
    ];
    return Scaffold(

      appBar: AppBar(
        title: const Text('Inventory Management',
        style: TextStyle(
          color: Colors.white54,
        ),),
        backgroundColor:Color(0xff1d1e22),
      ),
      body: screen[index],
      bottomNavigationBar: NavigationBarTheme(
        //unselectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 14),
        data: NavigationBarThemeData(
          indicatorColor: Color(0xfffbb179),
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(

                fontSize: 10, fontWeight: FontWeight.w500,color: Colors.white60),
          ),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: Color(0xff1d1e22),
          // labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: index,
          onDestinationSelected: (index) =>
              setState(() {
                this.index = index;
              }),
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.home, color: Colors.white70,
                  size: 26,),
                selectedIcon: Icon(Icons.home),
                label: 'Home'

            ),

            NavigationDestination(
                icon: Icon(Icons.shopping_bag, color: Colors.white70,
                  size: 26,),
                selectedIcon: Icon(Icons.shopping_bag),
                label: 'Stock'
            ),

            // NavigationDestination(
            //     icon:  Icon(Icons.email, color: Colors.white70,),
            //     selectedIcon: Icon(Icons.email),
            //     label: 'home'
            // ),
            //
            NavigationDestination(
                icon: Icon(Icons.person, color: Colors.white70,
                  size: 26,),
                selectedIcon: Icon(Icons.person),
                label: 'Profile'
            ),
            NavigationDestination(
                icon: Icon(Icons.add, color: Colors.white70,
                  size: 26,),
                selectedIcon: Icon(Icons.add),
                label: 'Add'
            ),
            // GestureDetector(
            //     child:  Icon(Icons.add,
            //     size:40,),
            //
            //   onTap: ()
            //   {
            //     showal(context);
            //   },
            // ),
            NavigationDestination(
                icon: Icon(Icons.computer, color: Colors.white70,
                  size: 26,),
                selectedIcon: Icon(Icons.computer),
                label: 'Team'
            ),
          ],
        ),
      ),

    );
  }
}
//
//   // void showal(BuildContext context) {
//     void showal(BuildContext context)
//     {
//       showDialog(
//           context: context,
//           builder:(BuildContext context)
//           {
//             return Dialog(
//               child: TextButton(
//                 onPressed: (){},
//                 child:
//                 Column(
//                   children: [
//                     Row(
//                       children: [
//                 // ListView.builder(
//                 //     itemCount: 19,
//                 //     itemBuilder: (context,int index){
//                 //       return Container(
//                 //         child: Row(
//                 //           children: [
//                 //
//                 //           ],
//                 //         ),
//                 //
//                 //       );
//                 //     }
//                 // )
//                 Expanded(
//                 child: Text(
//                   "Milk",
//                   style: TextStyle(
//                       fontSize: 24
//                   ),
//                 ),
//                 flex: 2,
//               ),
//                 Expanded(
//                   flex: 3,
//                   child: TextField(
//                     keyboardType: TextInputType.number,
//                     decoration: new InputDecoration(
//                       hintText: "ENTER THE NUMBER 3",
//                     ),
//                   ),
//                 ),
//
//                         Expanded(
//                           child: Text(
//                             "Sugar",
//                             style: TextStyle(
//                                 fontSize: 24
//                             ),
//                           ),
//                           flex: 2,
//                         ),
//                         Expanded(
//                           flex: 3,
//                           child: TextField(
//                             keyboardType: TextInputType.number,
//                             decoration: new InputDecoration(
//                               hintText: "ENTER THE NUMBER 3",
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Text(
//                             "Milk",
//                             style: TextStyle(
//                                 fontSize: 24
//                             ),
//                           ),
//                           flex: 2,
//                         ),
//                         Expanded(
//                           flex: 3,
//                           child: TextField(
//                             keyboardType: TextInputType.number,
//                             decoration: new InputDecoration(
//                               hintText: "ENTER THE NUMBER 3",
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Text(
//                             "Ice",
//                             style: TextStyle(
//                                 fontSize: 24
//                             ),
//                           ),
//                           flex: 2,
//                         ),
//                         Expanded(
//                           flex: 3,
//                           child: TextField(
//                             keyboardType: TextInputType.number,
//                             decoration: new InputDecoration(
//                               hintText: "ENTER THE NUMBER 3",
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Text(
//                             "Apple",
//                             style: TextStyle(
//                                 fontSize: 24
//                             ),
//                           ),
//                           flex: 2,
//                         ),
//                         Expanded(
//                           flex: 3,
//                           child: TextField(
//                             keyboardType: TextInputType.number,
//                             decoration: new InputDecoration(
//                               hintText: "ENTER THE NUMBER 3",
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Text(
//                             "Banana"
//                             ,
//                             style: TextStyle(
//                                 fontSize: 24
//                             ),
//                           ),
//                           flex: 2,
//                         ),
//                         Expanded(
//                           flex: 3,
//                           child: TextField(
//                             keyboardType: TextInputType.number,
//                             decoration: new InputDecoration(
//                               hintText: "ENTER THE NUMBER 3",
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Text(
//                             "Pineapple",
//                             style: TextStyle(
//                                 fontSize: 22
//                             ),
//                           ),
//                           flex: 2,
//                         ),
//                         Expanded(
//                           flex: 3,
//                           child: TextField(
//                             keyboardType: TextInputType.number,
//                             decoration: new InputDecoration(
//                               hintText: "ENTER THE NUMBER 3",
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Text(
//                             "Mango",
//                             style: TextStyle(
//                                 fontSize: 24
//                             ),
//                           ),
//                           flex: 2,
//                         ),
//                         Expanded(
//                           flex: 3,
//                           child: TextField(
//                             keyboardType: TextInputType.number,
//                             decoration: new InputDecoration(
//                               hintText: "ENTER THE NUMBER 3",
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     ElevatedButton(onPressed: (){
//                       Navigator.pop(context);
//                     }, child: Text('DONE')
//                     )
//                   ],
//                 ),
//               ),
//             );
//           }
//       );
//     }
//   }
// // }
// class Blank extends StatelessWidget {
//   const Blank({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       // showal
//     );
//   }
// }