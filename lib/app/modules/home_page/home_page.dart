import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/styles/app_colors.dart';
import 'package:flutter_desafio01_interface/app/modules/home_page/widgets/app_bar_widget.dart';
import 'package:flutter_desafio01_interface/app/modules/home_page/widgets/custom_sliver_horizontal_bar.dart';
import 'package:flutter_desafio01_interface/app/modules/home_page/widgets/custom_sliver_vertical_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Localização',
        subTitle: 'Paraná, Sulina PR',
      ),
      body: Container(
        color: Colors.transparent,
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.cinzaFraco,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: const CustomScrollView(
            slivers: <Widget>[
              CustomSliverHorizontalBar(),
              CustomSliverVerticalBar(),
            ],
          ),
        ),
      ),
    );
  }
}
