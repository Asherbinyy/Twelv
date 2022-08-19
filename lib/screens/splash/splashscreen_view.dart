import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';

class SplashscreenView extends StatefulWidget {
  @override
  _SplashscreenViewState createState() => _SplashscreenViewState();
}

class _SplashscreenViewState extends State<SplashscreenView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 70));
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return FadeTransition(
        opacity: _animation,
        child: Container(
          child: Image(
            image: context.theme.splashBackgroundImage,
            fit: BoxFit.cover,
          ),
        ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
