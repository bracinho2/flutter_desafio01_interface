import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/app_resposivity.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomVerticalMenuItemDescription extends StatelessWidget {
  final String nome;
  final String regiao;
  final String experiencia;
  final String cidade;
  final FaIcon icon;
  final FaIcon favorito;

  const CustomVerticalMenuItemDescription({
    Key? key,
    required this.nome,
    required this.regiao,
    required this.experiencia,
    required this.cidade,
    required this.icon,
    required this.favorito,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nome,
          style: TextStyle(
            fontSize: Resposivity.automatic(20, mediaQueryData),
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          regiao,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          experiencia,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FaIcon(
              icon.icon,
              color: Colors.red,
              size: Resposivity.automatic(20, mediaQueryData),
            ),
            SizedBox(
              width: Resposivity.automatic(12, mediaQueryData),
            ),
            Text(
              cidade,
              style: TextStyle(
                fontSize: Resposivity.automatic(12, mediaQueryData),
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
