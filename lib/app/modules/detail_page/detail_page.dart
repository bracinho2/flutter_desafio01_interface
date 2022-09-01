import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/styles/app_colors.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/widgets/custom_app_bar_detail_page_widget.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/widgets/custom_bottom_bar_detail_page.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/widgets/custom_dog_about.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/widgets/custom_dog_photos.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/widgets/dog_detail_description.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: const CustomDetailPageAppBarWidget(),
          body: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  child: const DogDetailDescription(),
                ),
              ),
              const Expanded(
                flex: 3,
                child: DogPhotos(),
              ),
              const Expanded(
                flex: 2,
                child: DogAbout(),
              ),
            ],
          ),
          bottomNavigationBar: const CustomBottomBarDetailPage()),
    );
  }
}
