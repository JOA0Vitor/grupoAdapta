import 'package:flutter/material.dart';
import 'package:myapp/page/parte1.dart';
import 'package:myapp/page/parte2.dart';
import 'package:myapp/page/parte3.dart';
import 'package:myapp/page/parte4.dart';


class web extends StatefulWidget {
  const web({super.key});

  @override
  State<web> createState() => _webState();
}

class _webState extends State<web> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
              parte1(),
              parte2(),
              parte3(),
              parte4()
              ],
      
        ),
      ),
    );
    
  }
}
