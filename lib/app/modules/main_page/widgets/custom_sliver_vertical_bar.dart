import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/app_resposivity.dart';
import 'package:flutter_desafio01_interface/app/core/data/acordeonistDummyList.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/detail_page.dart';
import 'package:flutter_desafio01_interface/app/modules/main_page/components/custom_horizontal_menu_image.dart';
import 'package:flutter_desafio01_interface/app/modules/main_page/components/custom_horizontal_menu_item_description.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSliverVerticalBar extends StatelessWidget {
  const CustomSliverVerticalBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(
                          item: acordeonistMenuList[index],
                        )));
          },
          child: Container(
            color: Colors.black12,
            child: Padding(
              padding: EdgeInsets.only(
                left: Resposivity.automatic(25, mediaQueryData),
                right: Resposivity.automatic(25, mediaQueryData),
                bottom: Resposivity.automatic(20, mediaQueryData),
              ),
              child: Container(
                height: Resposivity.automatic(120, mediaQueryData),
                width: Resposivity.automatic(315, mediaQueryData),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(Resposivity.automatic(20, mediaQueryData)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.all(
                                Resposivity.automatic(8.0, mediaQueryData)),
                            child: const CustomVerticalMenuImage()),
                        SizedBox(
                          width: Resposivity.automatic(10, mediaQueryData),
                        ),
                        CustomVerticalMenuItemDescription(
                          nome: acordeonistMenuList[index].nome,
                          experiencia: acordeonistMenuList[index].experiencia,
                          cidade: acordeonistMenuList[index].cidade,
                          favorito: acordeonistMenuList[index].favorito,
                          icon: acordeonistMenuList[index].icon,
                          regiao: acordeonistMenuList[index].regiao,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                          Resposivity.automatic(12, mediaQueryData)),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: FaIcon(
                          acordeonistMenuList[index].favorito.icon,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        childCount: acordeonistMenuList.length,
      ),
    );
  }
}
