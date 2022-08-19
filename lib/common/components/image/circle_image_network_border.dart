import 'package:flutter/material.dart';
import 'package:twelv/common/components/image/image_network_with_loader.dart';

class CircleImageNetworkBorder extends StatelessWidget {
  final String url;
  final double radius;
  final double border;
  final bool useCache;

  const CircleImageNetworkBorder({
    required this.url,
    this.radius = 125, // ignore: no-magic-number
    this.border = 5, // ignore: no-magic-number
    this.useCache = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: border),
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(radius)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
              ),
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          child: ImageNetworkWithLoader(
            url: url,
            width: radius,
            height: radius, // ignore: no-equal-arguments
          ),
        ),
      );
}
