import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class Sample extends StatefulWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: (){},
        child: Text("OKAY"),
      ),

    );
  }
}
