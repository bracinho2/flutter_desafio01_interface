import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/modules/main_page/main_page_widget.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}
