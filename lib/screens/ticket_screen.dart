import 'package:barcode_widget/barcode_widget.dart';
import 'package:booktickets_app/screens/app_layout.dart';
import 'package:booktickets_app/screens/ticket_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';
import '../utils/app_styles.dart';
import '../widgets/column_layout.dart';
import '../widgets/layout_builder_widget.dart';
import '../widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  final Color textColor;
  final Color tbColor;
  const TicketScreen(
      {super.key, required this.textColor, required this.tbColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(
                firstTab: "Upcoming",
                secondTab: "Previous",
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  flightColor: Styles.texttColor,
                  ticket: ticketList[0],
                  lowerContainerColor: Colors.white,
                  textColor: Color(0xFF173156),
                  upperContainerColor: Colors.white,
                  subText: Colors.grey.shade500,
                  thickColor: Styles.texttColor,
                  borderRadius: 0,
                  tbColor: Styles.texttColor,
                  shColor: Colors.grey.shade500,
                ),
              ),
              Container(
                //     height: AppLayout.getHeight(50),
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: 'Flutter DB',
                          secondText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: ' 4377 347964',
                          secondText: 'passport',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    AppLayoutBuilderWidget(
                      tbColor: Colors.grey.shade500,
                      sections: 15,
                      width: 5,
                      textColor: Colors.grey.shade500,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: '3855654 976434',
                          secondText: 'Number of E-ticket',
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: 'B2MA34',
                          secondText: 'Booking code',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    AppLayoutBuilderWidget(
                      tbColor: Colors.grey.shade500,
                      sections: 15,
                      width: 5,
                      textColor: Colors.grey.shade500,
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "lib/images/2..png",
                                  scale: 11,
                                ),
                                Text(
                                  " *** 3437",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: const Color(0xFF173156)),
                                ),
                              ],
                            ),
                            //sGap(1),
                            Text(
                              "Payment method",
                              style: Styles.headLineStyle4,
                            ),
                          ],
                        ),
                        AppColumnLayout(
                          firstText: '\$743.34',
                          secondText: 'Price',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Gap(AppLayout.getHeight(14)),
                  ],
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(AppLayout.getHeight(21)),
                    bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                  ),
                ),
                margin: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                  right: AppLayout.getHeight(15),
                ),
                padding: EdgeInsets.only(
                  top: AppLayout.getHeight(20),
                  bottom: AppLayout.getHeight(20),
                ),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https//github.com/martinovovo',
                      drawText: false,
                      color: Styles.texttColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  flightColor: Colors.white,
                  ticket: ticketList[0],
                  lowerContainerColor: Color(0xFF60ADB7),
                  textColor: Colors.white,
                  upperContainerColor: Color(0xFF173156),
                  subText: Colors.white,
                  thickColor: Colors.white,
                  borderRadius: 21.0,
                  tbColor: Color(0xFFeeedf2),
                  shColor: Colors.white,
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(22),
            top: AppLayout.getHeight(290),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.texttColor,
                  width: 1.8,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.texttColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(22),
            top: AppLayout.getHeight(290),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.texttColor,
                  width: 1.8,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.texttColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
