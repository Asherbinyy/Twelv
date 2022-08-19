import 'package:flutter/material.dart';

class AppCircleImageView extends StatelessWidget {
  final ImageProvider? image;
  final double size;

  const AppCircleImageView({required this.image, required this.size, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 5.0,
        ),
      ),
      child: CircleAvatar(
        radius: size / 2,
        backgroundImage: image,
      ),
    );
  }
}
