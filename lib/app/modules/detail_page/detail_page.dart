import 'package:flutter/material.dart';
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
          backgroundColor: Colors.white,
          appBar: const CustomDetailPageAppBarWidget(),
          body: ListView(
            children: [
              Container(
                color: Colors.white,
                child: const DogDetailDescription(),
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                height: 368,
                color: Colors.white,
                child: const DogPhotos(),
              ),
              const DogAbout(),
            ],
          ),
          bottomNavigationBar: const CustomBottomBarDetailPage()),
    );
  }
}
