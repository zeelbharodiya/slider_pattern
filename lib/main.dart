import 'package:auto_pattern/page1.dart';
import 'package:auto_pattern/page2.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    homePage(),
  );
}


class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const PageOne(),
        'Spage': (context) => const Spage(),
      },
    );
  }
}
