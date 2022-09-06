import 'package:flutter/material.dart';

class Resposivity {
  static double _calcWidth(double tamanho, MediaQueryData data) {
    final size = data.size;

    //inserir o tamanho da LARGURA do mockup;
    var coeficiente = tamanho / 375;

    return size.width * coeficiente;
  }

  static double _calcHeight(double tamanho, MediaQueryData data) {
    final size = data.size;

    //inserir o tamanho da ALTURA do mockup;
    var coeficiente = tamanho / 667;

    return size.height * coeficiente;
  }

  static double automatic(double tamanho, MediaQueryData data) {
    final width = data.size.width;
    final height = data.size.height;

    return width > height
        ? _calcHeight(tamanho, data)
        : _calcWidth(tamanho, data);
  }

  static double fontSize(double fontSize, MediaQueryData data) {
    final width = data.size.width;

    if (width > 320 && width < 767) return fontSize;
    if (width > 768 && width < 1023) return fontSize + 2;
    if (width > 1024 && width < 1279) return fontSize + 3;
    if (width > 1280) return fontSize + 4;

    return 12;
  }
}

//https://matthewjamestaylor.com/responsive-font-size
// de 320px a 767px  =  font-size: 16px;
// de 768px a 1023px = font-size: 18px;
// de 1024px a 1279px = font-size: 19px;
// a partir de 1280px = font-size: 20px;