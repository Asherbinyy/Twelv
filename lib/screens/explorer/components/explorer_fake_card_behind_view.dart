import 'package:flutter/material.dart';

class ExplorerFakeCardBehindView extends StatelessWidget {
  final double margin;
  final double bottomMargin;
  const ExplorerFakeCardBehindView({required this.margin, this.bottomMargin = 20, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding:
            EdgeInsets.only(left: margin * 2, right: margin * 2, bottom: bottomMargin, top: margin),
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
            ),
          ],
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Container(
              color: const Color(0xfff3f3f3),
            )),
      );
}
