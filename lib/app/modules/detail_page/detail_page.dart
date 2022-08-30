import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/widgets/custom_app_bar_detail_page_widget.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/widgets/custom_bottom_bar_detail_page.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/widgets/dog_detail_description.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomDetailPageAppBarWidget(),
        body: Column(
          children: const [
            DogDetailDescription(),
          ],
        ),
        bottomNavigationBar: const CustomBottomBarDetailPage());
  }
}
