import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/app_resposivity.dart';
import 'package:flutter_desafio01_interface/app/modules/main_page/widgets/app_bar_main_widget.dart';
import 'package:flutter_desafio01_interface/app/modules/main_page/components/custom_sliver_horizontal_bar.dart';
import 'package:flutter_desafio01_interface/app/modules/main_page/components/custom_sliver_vertical_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 105,
              flexibleSpace: AppBarMainWidget(
                title: 'Gaiteiros',
                subTitle: 'Sulina - Paraná',
              ),
            ),
            CustomSliverHorizontalBar(),
            CustomSliverVerticalBar(),
          ],
        ),
      ),
    );
  }
}
