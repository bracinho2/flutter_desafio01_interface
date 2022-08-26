import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/modules/home_page/widgets/app_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Localização',
        subTitle: 'Paraná, Sulina PR',
        loginbutton: false,
      ),
      body: Container(
        color: Colors.amber,
      ),
    );
  }
}
