import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController {
  //
  int szamlalo = 0;

  void noveld() {
    if (szamlalo < 5) {
      ++szamlalo;
      update();
    }
  }

  void csokkent() {
    if (szamlalo > 0) {
      szamlalo--;
      update();
    }
  }

  String getSzamlalo() {
    return szamlalo.toString();
  }

  List<Icon> getIcons() {
    List<Icon> temp = [];
    for (int i = 0; i < 5; i++) {
      if (i < szamlalo)
        temp.add(Icon(Icons.star));
      else
        temp.add(Icon(Icons.star_border));
    }
    return temp;
  }
}
