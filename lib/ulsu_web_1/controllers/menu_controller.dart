import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/icon_names.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeSideMenuItem = ''.obs;
  var hoveringSideMenuItem = ''.obs;

  void changeActiveItemTo(String itemName) {
    activeSideMenuItem.value = itemName;
  }

  void onHover(String itemName) {
    if (!isActive(itemName)) {
      hoveringSideMenuItem.value = itemName;
    }
  }

  bool isActive(String itemName) {
    return activeSideMenuItem.value == itemName;
  }

  bool isHovering(String itemName) {
    return hoveringSideMenuItem.value == itemName;
  }
}
