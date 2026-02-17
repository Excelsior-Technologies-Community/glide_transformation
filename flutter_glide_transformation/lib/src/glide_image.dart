import 'dart:ui';
import 'package:flutter/material.dart';

class GlideImage extends StatelessWidget {
  final ImageProvider image;
  final double blur;
  final double borderRadius;
  final bool grayscale;
  final double? width;
  final double? height;
  final BoxFit? fit;

  const GlideImage({
    super.key,
    required this.image,
    this.blur = 0,
    this.borderRadius = 0,
    this.grayscale = false,
    this.width,
    this.height,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    Widget child = Image(
      image: image,
      width: width,
      height: height,
      fit: fit,
    );

    if (grayscale) {
      child = ColorFiltered(
        colorFilter: const ColorFilter.matrix([
          0.2126, 0.7152, 0.0722, 0, 0,
          0.2126, 0.7152, 0.0722, 0, 0,
          0.2126, 0.7152, 0.0722, 0, 0,
          0,      0,      0,      1, 0,
        ]),
        child: child,
      );
    }

    if (blur > 0) {
      child = ImageFiltered(
        imageFilter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: child,
      );
    }

    if (borderRadius > 0) {
      child = ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: child,
      );
    }

    return child;
  }
}
