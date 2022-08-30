import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/detail_page.dart';
import 'package:flutter_desafio01_interface/app/modules/home_page/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.transparent),
      debugShowCheckedModeBanner: false,
      home: const DetailPage(),
    );
  }
}
