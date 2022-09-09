import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/app_resposivity.dart';
import 'package:flutter_desafio01_interface/app/core/data/app_assets.dart';

class CustomVerticalMenuImage extends StatelessWidget {
  const CustomVerticalMenuImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return ClipRRect(
      borderRadius:
          BorderRadius.circular(Resposivity.automatic(20, mediaQueryData)),
      child: Image.asset(ImageAssets.gaita),
    );
  }
}
