import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:order_summary_component/view/component/text_component.dart';
import 'package:order_summary_component/view_model/cubit/app_cubit.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {
          if (state is ChangeThemeColorState) {
            Fluttertoast.showToast(
              msg: "ChangeThemeColor",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 2,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0,
            );
          }
        },
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextCustom(
                    data: cubit.isDark ? "LightMode" : "DarkMode",
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  IconButton(
                    onPressed: () {
                      cubit.changeTheme();
                    },
                    icon: Icon(
                      cubit.isDark
                          ? Icons.brightness_7_outlined // Dark mode icon
                          : Icons.brightness_4_outlined, // Light mode icon
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
