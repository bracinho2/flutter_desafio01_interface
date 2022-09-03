import 'package:flutter/material.dart';

class CustomSliverHorizontalBar extends StatelessWidget {
  const CustomSliverHorizontalBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
              bottom: 5,
            ),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listaMenus.length,
                itemBuilder: ((context, index) => Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17.0),
                                color: Colors.amber,
                              ),
                              child: Row(children: [
                                listaMenus[index].icon,
                                if (listaMenus[index].name.isNotEmpty)
                                  Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Text(listaMenus[index].name,
                                          style: const TextStyle(
                                              color: Colors.white)))
                              ]))
                        ]))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItem {
  final Icon icon;
  final String name;

  MenuItem({
    required this.icon,
    this.name = '',
  });
}

List<MenuItem> listaMenus = [
  MenuItem(
    icon: const Icon(
      Icons.menu,
      color: Colors.white,
    ),
  ),
  MenuItem(
    icon: const Icon(
      Icons.menu,
      color: Colors.white,
    ),
    name: 'Cats',
  ),
  MenuItem(
    icon: const Icon(
      Icons.menu,
      color: Colors.white,
    ),
    name: 'Birds',
  ),
  MenuItem(
    icon: const Icon(
      Icons.menu,
      color: Colors.white,
    ),
    name: 'Jacares',
  ),
  MenuItem(
    icon: const Icon(
      Icons.menu,
      color: Colors.white,
    ),
    name: 'Jacares',
  ),
  MenuItem(
    icon: const Icon(
      Icons.menu,
      color: Colors.white,
    ),
    name: 'Jacares',
  ),
  MenuItem(
    icon: const Icon(
      Icons.menu,
      color: Colors.white,
    ),
    name: 'Jacares',
  ),
];
