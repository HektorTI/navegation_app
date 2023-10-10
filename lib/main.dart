import 'package:flutter/material.dart';
import 'package:navegation_app/pages/page_one.dart';
import 'package:navegation_app/pages/page_three.dart';
import 'package:navegation_app/pages/page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // muito util, tira o debug da tela.
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PageOne(),
        '/Pagetwo': (context) => const PageTwo(parametro: ''),
        '/Pagethree': (context) => const PageThree(),
      },
    );
  }
}
