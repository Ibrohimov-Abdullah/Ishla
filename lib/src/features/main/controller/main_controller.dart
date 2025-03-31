import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ishla/src/features/connection/view/pages/connection_page.dart';
import 'package:ishla/src/features/home/view/pages/home_page.dart';

class MainController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxBool indexOne = true.obs;
  RxBool indexTwo = false.obs;
  RxBool indexThree = false.obs;
  RxBool indexFour = false.obs;
  RxBool indexFive = false.obs;

  RxList<Widget> pages = [
    JobSearchHomePage(),
    CompaniesFollowPage(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ].obs;

  void colorChanger(int value) {
    selectedIndex.value = value;
    indexOne.value = value == 0;
    indexTwo.value = value == 1;
    indexThree.value = value == 2;
    indexFour.value = value == 3;
    indexFive.value = value == 4;
  }
}
