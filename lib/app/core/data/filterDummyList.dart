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
      FontAwesomeIcons.music,
    ),
    name: 'Gauchesca',
    clicked: true,
  ),
  FilterMenuItem(
    icon: const FaIcon(
      FontAwesomeIcons.music,
    ),
    name: 'Nordestina',
  ),
  FilterMenuItem(
    icon: const FaIcon(
      FontAwesomeIcons.music,
    ),
    name: 'Amazonense',
    clicked: true,
  ),
  FilterMenuItem(
    icon: const FaIcon(
      FontAwesomeIcons.music,
    ),
    name: 'Forro',
  ),
  FilterMenuItem(
    icon: const FaIcon(
      FontAwesomeIcons.music,
    ),
    name: 'Paraguay',
  ),
  FilterMenuItem(
    icon: const FaIcon(
      FontAwesomeIcons.music,
    ),
    name: 'Jacares',
  ),
];
