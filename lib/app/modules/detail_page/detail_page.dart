import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/data/acordeonistDummyList.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/widgets/custom_app_bar_detail_page_widget.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/components/custom_bottom_bar_detail_page.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/widgets/custom_dog_about.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/components/custom_dog_photos.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/components/dog_detail_description.dart';

class DetailPage extends StatelessWidget {
  final AcordeonistItem item;
  const DetailPage({
    Key? key,
    required this.item,
  }) : super(key: key);

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
              child: DogDetailDescription(
                name: item.nome,
                city: item.cidade,
                experience: item.cidade,
                favorite: item.favorito,
                icon: item.icon,
                region: item.regiao,
              ),
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
        bottomNavigationBar: const CustomBottomBarDetailPage(
          title: 'ADOTAR',
        ),
      ),
    );
  }
}
