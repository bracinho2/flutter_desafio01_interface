import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/app_resposivity.dart';
import 'package:flutter_desafio01_interface/app/modules/home_page/widgets/app_bar_home_page_widget.dart';
import 'package:flutter_desafio01_interface/app/modules/home_page/widgets/custom_sliver_horizontal_bar.dart';
import 'package:flutter_desafio01_interface/app/modules/home_page/widgets/custom_sliver_vertical_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        // appBar:  const AppBarHomePageWidget(
        //   title: 'Localização',
        //   subTitle: 'Paraná, Sulina PR',
        // ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: Resposivity.automatic(105, mediaQueryData),
              flexibleSpace: const AppBarHomePageWidget(
                title: 'Location',
                subTitle: 'Sulina - Paraná',
              ),
            ),
            const CustomSliverHorizontalBar(),
            const CustomSliverVerticalBar(),
          ],
        ),
      ),
    );
  }
}
