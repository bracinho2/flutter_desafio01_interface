import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/app_resposivity.dart';
import 'package:flutter_desafio01_interface/app/core/data/filterDummyList.dart';
import 'package:flutter_desafio01_interface/app/modules/main_page/components/custom_horizontal_menu_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSliverHorizontalBar extends StatelessWidget {
  const CustomSliverHorizontalBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return SliverToBoxAdapter(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        height: Resposivity.automatic(95, mediaQueryData),
        child: Padding(
          padding:
              EdgeInsets.only(left: Resposivity.automatic(10, mediaQueryData)),
          child: ListView.builder(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            itemCount: filterMenuItemList.length,
            itemBuilder: ((context, index) => CustomHorizontalMenuItem(
                  name: filterMenuItemList[index].name,
                  icon: filterMenuItemList[index].icon,
                  clicked: filterMenuItemList[index].clicked,
                )),
          ),
        ),
      ),
    );
  }
}
