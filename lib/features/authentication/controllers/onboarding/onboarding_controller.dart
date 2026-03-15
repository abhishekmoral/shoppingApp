import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final  PageController pageController = PageController();
  RxInt currentIndex = 0.obs;

  /// Update current index when page scroll
  void updatePageIndicator(int index) {
    currentIndex.value = index;
  }

  /// Jump to specific dot selected page.
  void dotNavigationClick(int index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// Update current index and jump to the next page.
  void nextPage() {
    if (currentIndex.value == 2) {
      return;
    }
    currentIndex.value++;
    pageController.jumpToPage(currentIndex.value);
  }

  /// Update current index and jump to the last page.

  void skipPage() {
    currentIndex.value =2;
    pageController.jumpToPage(currentIndex.value);
  }
}
