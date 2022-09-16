import 'package:flutter/material.dart';
import 'package:get/get.dart';

Color primary = const Color(0xFF687daf);

class Styles{
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFeeeedf2);
  static Color orangeColor =  Colors.orangeAccent.shade700;

  static TextStyle textStyle = TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLine_1 = TextStyle(fontSize: 24, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLine_2 = TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.w800);
  static TextStyle headLine_3 = TextStyle(fontSize: 17, color: textColor, fontWeight: FontWeight.w600);
  static TextStyle headLine_4 = TextStyle(fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.bold);
}

class AppLayout {
  static getsize(BuildContext context){
    return MediaQuery.of(context).size;
  }

  static getScreenHeightProp(double prop){
    
    return Get.height * prop ;
  }

  static getScreenWidthProp(double prop){
    return Get.width * prop ;
  }

}