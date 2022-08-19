import 'package:flutter/material.dart';

class AppBackgroundContainer extends StatelessWidget {
  final Widget child;
  final ImageProvider backgroundImage;

  const AppBackgroundContainer({required this.child, required this.backgroundImage, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image(
        image: backgroundImage,
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
      child
    ]);
  }
}
