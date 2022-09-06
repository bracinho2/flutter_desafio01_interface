import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FilterMenuItem {
  final FaIcon icon;
  final String name;
  final bool clicked;

  FilterMenuItem({
    required this.icon,
    this.name = '',
    this.clicked = false,
  });
}

List<FilterMenuItem> filterMenuItemList = [
  FilterMenuItem(
    icon: const FaIcon(
      FontAwesomeIcons.bars,
    ),
  ),
  FilterMenuItem(
    icon: const FaIcon(
      FontAwesomeIcons.dog,
    ),
    name: 'Dogs',
    clicked: true,
  ),
  FilterMenuItem(
    icon: const FaIcon(
      FontAwesomeIcons.cat,
    ),
    name: 'Birds',
  ),
  FilterMenuItem(
    icon: const FaIcon(
      FontAwesomeIcons.cat,
    ),
    name: 'Jacares',
    clicked: true,
  ),
  FilterMenuItem(
    icon: const FaIcon(
      FontAwesomeIcons.cat,
    ),
    name: 'Jacares',
  ),
  FilterMenuItem(
    icon: const FaIcon(
      FontAwesomeIcons.cat,
    ),
    name: 'Jacares',
  ),
  FilterMenuItem(
    icon: const FaIcon(
      FontAwesomeIcons.cat,
    ),
    name: 'Jacares',
  ),
];
