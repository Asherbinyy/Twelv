import 'package:flutter/material.dart';

class ProfileCardContainer extends StatelessWidget {
  final Widget? child;
  final bool shadow;

  const ProfileCardContainer({Key? key, this.child, this.shadow = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: !shadow
          ? null
          : BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 20,
                ),
              ],
            ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Container(
            color: Colors.white,
            child: child,
          )),
    );
  }
}
