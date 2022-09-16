import 'package:flutter/material.dart';

import '../util/_styles.dart';

// ignore: must_be_immutable
class DoubleTitle extends StatelessWidget {
  DoubleTitle({super.key, required this.first_text, required this.second_text});
  // ignore: non_constant_identifier_names
  String first_text;
  // ignore: non_constant_identifier_names
  String second_text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            first_text,
            style: Styles.headLine_2.copyWith(
                color: Colors.grey.shade800,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
          InkWell(
              onTap: () {
                print("You are tapped");
              },
              child: Text(
                second_text,
                style: Styles.textStyle.copyWith(color: Colors.grey.shade500),
              ))
        ],
      ),
    );
  }
}

class ExpandedMultipler extends StatelessWidget {
  const ExpandedMultipler({super.key});
  // for displaying a widget many times on the screen
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
      height: 21,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
              (constraints.constrainWidth() / 5).floor(),
              (index) => const SizedBox(
                width: 3,
                height: 1,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                  color: Colors.white,
                )),
              ),
            ),
          );
        },
      ),
    ));
  }
}

// ignore: must_be_immutable
class ColumLayoutText extends StatelessWidget {
  ColumLayoutText({super.key, required this.headText, required this.subText, required this.alignment});
  String headText;
  String subText;
  CrossAxisAlignment alignment;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          headText,
          style: Styles.textStyle.copyWith(fontWeight: FontWeight.w700),
        ),
        Text(
          subText,
          style: Styles.headLine_4,
        )
      ],
    );
  }
}
