
import 'package:flutter/material.dart';
import 'package:myapp/page/web.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override //itens que ta na tela
  Widget build(BuildContext context) {
    return MaterialApp(
      //Tras varios itens
      debugShowCheckedModeBanner: false, //tirar a faixa de debug
      theme: ThemeData(
        // ignore: deprecated_member_use
        errorColor: Colors.red,
      ),
      home: web(),
    );
  }
}
