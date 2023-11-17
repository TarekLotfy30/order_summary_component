import 'package:flutter/material.dart';
import 'package:order_summary_component/view_model/utiles/colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      toolbarHeight: 70,
      backgroundColor: CustomColors.primary,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: CustomColors.appBar,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: CustomColors.primary,
      selectedItemColor: CustomColors.buttonBackground2,
      selectedLabelStyle: TextStyle(),
      selectedIconTheme: IconThemeData(
        size: 30,
      ),
      unselectedItemColor: Colors.blueGrey,
      unselectedLabelStyle: TextStyle(),
      unselectedIconTheme: IconThemeData(
        size: 20,
      ),
    ),
    scaffoldBackgroundColor: CustomColors.veryPaleBlueHex,
    fontFamily: "RedHatDisplay",
    cardColor: Colors.white,
  );

  static final ThemeData darkTheme =
      ThemeData.dark().copyWith(cardColor: Colors.black26);
}
