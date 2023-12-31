import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final Color textColor;
  //final bool isColor;
  final int sections;
  final double width;
  final Color tbColor;

  const AppLayoutBuilderWidget(
      {super.key,
      
      required this.textColor,
      required this.sections,
      required this.tbColor,
      this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        print("The width is ${constraints.constrainWidth()}");

        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (constraints.constrainWidth() / sections).floor(),
            (index) => SizedBox(
              width: width,
              height: 1,
              child: DecoratedBox(
                  decoration: BoxDecoration(
                color: tbColor,
              )),
            ),
          ),
        );
      },
    );
  }
}
