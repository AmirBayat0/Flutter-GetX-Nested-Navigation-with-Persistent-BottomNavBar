import 'package:get/get.dart';

class BaseController extends GetxController {
  static BaseController get to => Get.find();
  var currentIndex = 0.obs;

  void changePage(int index) {
    // if (currentIndex.value != index) {
    //   Get.nestedKey(currentIndex.value + 1)
    //       ?.currentState
    //       ?.popUntil((route) => route.isFirst);
    currentIndex.value = index;
    // }
  }
}

//
// Created by CodeWithFlexZ
// Tutorials on my YouTube
//
//! Instagram
//! @CodeWithFlexZ
//
//? GitHub
//? AmirBayat0
//
//* YouTube
//* Programming with FlexZ
//