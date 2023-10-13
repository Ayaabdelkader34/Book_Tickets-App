import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../widgets/column_layout.dart';
import '../widgets/layout_builder_widget.dart';
import 'app_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20),
          ),
          children: [
            Gap(AppLayout.getHeight(40)),
            Row(
              children: [
                Container(
                  height: AppLayout.getHeight(86),
                  width: AppLayout.getHeight(86),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image:
                        DecorationImage(image: AssetImage("lib/images/1..png")),
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Book Tickets",
                      style: Styles.headLineStyle1,
                    ),
                    Gap(AppLayout.getHeight(2)),
                    Text(
                      "New-York",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Gap(AppLayout.getHeight(8)),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(100)),
                        color: Color(0xFF60ADB7),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getHeight(3),
                          vertical: AppLayout.getHeight(3)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              FluentSystemIcons.ic_fluent_shield_filled,
                              color: Color(0xFF60ADB7),
                              size: 15,
                            ),
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            "Premium status",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Gap(AppLayout.getHeight(5)),
                        ],
                      ),
                    ),
                  ],
                ),
                //  Spacer(),
              ],
            ),
            Gap(AppLayout.getHeight(8)),
            Divider(
              color: Colors.grey.shade300,
            ),
            Gap(AppLayout.getHeight(8)),
            Stack(
              children: [
                Container(
                  height: AppLayout.getHeight(90),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(18)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(25),
                      vertical: AppLayout.getHeight(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.primaryColor,
                          size: 27,
                        ),
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You\'ve got a new award",
                            style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "You have 74 flights in a year",
                            style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Gap(AppLayout.getHeight(20)),
            Text(
              "Accumulated miles",
              style: Styles.headLineStyle2,
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                color: Styles.bgColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Gap(AppLayout.getHeight(15)),
                  Text(
                    "173437",
                    style: TextStyle(
                        fontSize: 45,
                        color: Styles.texttColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Miles accrued",
                        style: Styles.headLineStyle4.copyWith(fontSize: 16),
                      ),
                      Text(
                        "17 May 2023",
                        style: Styles.headLineStyle4.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(4)),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  Gap(AppLayout.getHeight(4)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "43 073",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                        firstText: "Airline CO",
                        secondText: "Received from",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  AppLayoutBuilderWidget(
                    sections: 12,
                    width: 5,
                    textColor: Colors.grey.shade500,
                    tbColor: Colors.grey.shade500,
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "43",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                        firstText: "McDonal\'s",
                        secondText: "Received from",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  AppLayoutBuilderWidget(
                    sections: 12,
                    width: 5,
                    textColor: Colors.grey.shade500,
                    tbColor: Colors.grey.shade500,
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "73 341",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                        firstText: "Aya Abdelkader",
                        secondText: "Received from",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Gap(AppLayout.getHeight(25)),
            InkWell(
              onTap: () => print("You are tapped"),
              child: Center(
                child: Text(
                  "How to get more miles",
                  style: Styles.textStyle.copyWith(
                      color: Styles.primaryColor, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ]),
    );
  }
}
