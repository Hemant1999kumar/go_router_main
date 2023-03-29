
import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:html' as html;

class Helpers{
  static final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);

  // static void setSelectedIndex(){
  //  final current_location =  html.window.location.href.split('/').sublist(3).join('/');
  //   switch(current_location){
  //     case '':
  //     Helpers.selectedIndex.value = 0;
  //     break;
  //     case 'options':
  //     Helpers.selectedIndex.value = 1;
  //     break;
  //     case 'screeners':
  //     Helpers.selectedIndex.value = 2;
  //   };
  // }
}

