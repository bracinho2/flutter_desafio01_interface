import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AcordeonistItem {
  final String nome;
  final String regiao;
  final String experiencia;
  final FaIcon icon;
  final String cidade;
  final FaIcon favorito;

  AcordeonistItem({
    required this.nome,
    required this.regiao,
    required this.experiencia,
    required this.icon,
    required this.cidade,
    required this.favorito,
  });
}

List<AcordeonistItem> acordeonistMenuList = [
  AcordeonistItem(
    nome: 'Tião',
    regiao: 'Nordeste',
    experiencia: '2 anos',
    icon: const FaIcon(FontAwesomeIcons.music),
    cidade: 'João Pessoa - PB',
    favorito: const FaIcon(FontAwesomeIcons.heart),
  ),
  AcordeonistItem(
    nome: 'Tião',
    regiao: 'Nordeste',
    experiencia: '2 anos',
    icon: const FaIcon(FontAwesomeIcons.music),
    cidade: 'João Pessoa - PB',
    favorito: const FaIcon(FontAwesomeIcons.heart),
  ),
  AcordeonistItem(
    nome: 'Tião',
    regiao: 'Nordeste',
    experiencia: '2 anos',
    icon: const FaIcon(FontAwesomeIcons.music),
    cidade: 'João Pessoa - PB',
    favorito: const FaIcon(FontAwesomeIcons.heart),
  ),
  AcordeonistItem(
    nome: 'Tião',
    regiao: 'Nordeste',
    experiencia: '2 anos',
    icon: const FaIcon(FontAwesomeIcons.music),
    cidade: 'João Pessoa - PB',
    favorito: const FaIcon(FontAwesomeIcons.heart),
  ),
  AcordeonistItem(
    nome: 'Tião',
    regiao: 'Nordeste',
    experiencia: '2 anos',
    icon: const FaIcon(FontAwesomeIcons.music),
    cidade: 'João Pessoa - PB',
    favorito: const FaIcon(FontAwesomeIcons.heart),
  ),
  AcordeonistItem(
    nome: 'Tião',
    regiao: 'Nordeste',
    experiencia: '2 anos',
    icon: const FaIcon(FontAwesomeIcons.music),
    cidade: 'João Pessoa - PB',
    favorito: const FaIcon(FontAwesomeIcons.heart),
  ),
  AcordeonistItem(
    nome: 'Tião',
    regiao: 'Nordeste',
    experiencia: '2 anos',
    icon: const FaIcon(FontAwesomeIcons.music),
    cidade: 'João Pessoa - PB',
    favorito: const FaIcon(FontAwesomeIcons.heart),
  ),
];
