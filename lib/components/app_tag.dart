import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twelv/components/app_text.dart';

class AppTag extends StatelessWidget {
  final Color color;
  final String text;
  final Icon? iconLeft;

  const AppTag(this.color, this.text, {this.iconLeft});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: color,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: iconLeft == null ? 6 : 12),
                child: iconLeft,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 6, top: 10, right: 12, bottom: 10),
                child: AppText(
                  text,
                  type: AppTextType.tag,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
