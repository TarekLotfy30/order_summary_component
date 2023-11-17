import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_summary_component/view/screens/order_sumary_screen.dart';
import 'package:order_summary_component/view/screens/settings.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of<AppCubit>(context);

  int currentIndex = 0;
  List<Widget> screenList = [
    const OrderSummaryPage(),
    const SettingsPage(),
  ];
  List<String> titleList = [
    "Music",
    "Settings",
  ];
  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.music_note_outlined,
      ),
      label: "Music",
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.settings,
      ),
      label: "Settings",
    ),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeIndex());
  }

  bool isDark = false;

  void changeTheme() {
    isDark = !isDark;
    //SharedPreference.set(key: SharedKeys.isDark, value: isDark);
    emit(ChangeThemeColorState());
  }
}
