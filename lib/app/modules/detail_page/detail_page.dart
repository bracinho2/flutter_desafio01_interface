import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/styles/app_colors.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/widgets/custom_app_bar_detail_page_widget.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/widgets/custom_bottom_bar_detail_page.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/widgets/dog_detail_description.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: ((context, index) => Container(
                              height: 50,
                              width: 50,
                              color: Colors.blue,
                              child: Text(
                                '$index',
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)),
                      width: 200,
                      child: const Text('Container 02'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Sobre',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset,  It was popularised in the 1960s with the release of Letraset',
                        style: TextStyle(
                          fontSize: 15,
                          height: 2,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: const CustomBottomBarDetailPage());
  }
}
