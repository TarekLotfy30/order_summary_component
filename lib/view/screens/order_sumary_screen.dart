import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:order_summary_component/view/component/text_component.dart';
import 'package:order_summary_component/view_model/utiles/colors.dart';

class OrderSummaryPage extends StatelessWidget {
  const OrderSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.veryPaleBlueHex,
      body: SafeArea(
        child: Stack(
          children: [
            SvgPicture.asset(
              "assets/pattern-background-mobile.svg",
              semanticsLabel: 'Image',
              width: 410,
            ),
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(15),
              ),
              margin: const EdgeInsets.fromLTRB(25, 30, 25, 50),
              child: Column(
                children: [
                  SvgPicture.asset(
                    "assets/illustration-hero.svg",
                    semanticsLabel: 'Image',
                    fit: BoxFit.fitWidth,
                    alignment: AlignmentDirectional.topCenter,
                  ),
                  const TextCustom(
                    data: "Order Summary",
                    color: CustomColors.darkBlueHex,
                    fontWeight: FontWeight.w900,
                    fontSize: 23,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: TextCustom(
                      data:
                          "You can now listen to millions of songs, audiobooks,and podcasts on any device anywhere you like!",
                      color: CustomColors.secondaryText,
                      fontWeight: FontWeight.w600,
                      textAlign: TextAlign.center,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    child: ListTile(
                      leading: SvgPicture.asset(
                        "assets/icon-music.svg",
                        semanticsLabel: 'Image',
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                      title: const TextCustom(
                        data: "Annual Plan",
                        fontWeight: FontWeight.w700,
                        color: CustomColors.darkBlueHex,
                        letterSpacing: 0,
                      ),
                      subtitle: const TextCustom(
                        data: r"$59.99/year",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0,
                        color: CustomColors.secondaryText,
                        fontSize: 15,
                      ),
                      trailing: const TextCustom(
                        data: "Change",
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0,
                        color: CustomColors.buttonBackground,
                        decoration: TextDecoration.underline,
                      ),
                      dense: true,
                      horizontalTitleGap: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(320, 60),
                      elevation: 0,
                      backgroundColor: CustomColors.buttonBackground2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const TextCustom(
                      data: "Proceed to Payment",
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const TextCustom(
                      data: "Cancel Order",
                      color: CustomColors.secondaryText,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
