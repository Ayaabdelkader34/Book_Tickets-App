import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../screens/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({super.key,required this.firstTab,required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width / 20,
      padding: const EdgeInsets.all(1),
      child: Row(children: [
        Container(
          width: size.width / 2.4,
          padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(AppLayout.getHeight(50)),
            ),
            color: Colors.white,
          ),
          child: Center(
              child: Text(
            firstTab,
            style: TextStyle(color: Color(0xFF173156)),
          )),
        ),
        Container(
          width: size.width / 2.199999999999999999,
          padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(AppLayout.getHeight(50)),
            ),
            color: Colors.grey.shade100,
          ),
          child: Center(
              child: Text(
            secondTab,
            style: TextStyle(color: Color(0xFF173156)),
          )),
        ),
      ]),
    );
  }
}
