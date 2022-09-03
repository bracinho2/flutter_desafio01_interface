class AppResponsivity {
  //minimal screen = 315
  //largura varia menos no mobile

  static int larguraMinima = 315;

  static double calculaLargura(double altura) {
    var coeficiente = larguraMinima / altura;
    //print('Coeficiente de Resposividade $coeficiente');
    return coeficiente;
  }
}
