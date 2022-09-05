import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/app_resposivity.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSliverHorizontalBar extends StatelessWidget {
  const CustomSliverHorizontalBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return SliverToBoxAdapter(
      child: SizedBox(
        height: Resposivity.automatic(95, mediaQueryData),
        child: Padding(
          padding:
              EdgeInsets.only(left: Resposivity.automatic(10, mediaQueryData)),
          child: ListView.builder(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            itemCount: listaMenus.length,
            itemBuilder: ((context, index) => Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Resposivity.automatic(16, mediaQueryData)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          padding: EdgeInsets.all(
                              Resposivity.automatic(12, mediaQueryData)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                Resposivity.automatic(17, mediaQueryData)),
                            color: listaMenus[index].clicked
                                ? Colors.red
                                : Colors.white,
                          ),
                          child: Row(children: [
                            FaIcon(
                              listaMenus[index].icon.icon,
                              color: listaMenus[index].clicked
                                  ? Colors.white
                                  : Colors.black26,
                            ),
                            if (listaMenus[index].name.isNotEmpty)
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: Resposivity.automatic(
                                          12, mediaQueryData)),
                                  child: Text(listaMenus[index].name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: listaMenus[index].clicked
                                            ? Colors.white
                                            : Colors.black87,
                                      )))
                          ]))
                    ]))),
          ),
        ),
      ),
    );
  }
}

class MenuItem {
  final FaIcon icon;
  final String name;
  final bool clicked;

  MenuItem({
    required this.icon,
    this.name = '',
    this.clicked = false,
  });
}

List<MenuItem> listaMenus = [
  MenuItem(
    icon: const FaIcon(
      FontAwesomeIcons.bars,
    ),
  ),
  MenuItem(
    icon: const FaIcon(
      FontAwesomeIcons.dog,
    ),
    name: 'Dogs',
    clicked: true,
  ),
  MenuItem(
    icon: const FaIcon(
      FontAwesomeIcons.cat,
    ),
    name: 'Birds',
  ),
  MenuItem(
    icon: const FaIcon(
      FontAwesomeIcons.cat,
    ),
    name: 'Jacares',
  ),
  MenuItem(
    icon: const FaIcon(
      FontAwesomeIcons.cat,
    ),
    name: 'Jacares',
  ),
  MenuItem(
    icon: const FaIcon(
      FontAwesomeIcons.cat,
    ),
    name: 'Jacares',
  ),
  MenuItem(
    icon: const FaIcon(
      FontAwesomeIcons.cat,
    ),
    name: 'Jacares',
  ),
];
