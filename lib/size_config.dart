import 'package:flutter/material.dart';

class FontSizeConfig {
  static double small, normal, large;
}

class SizeConfig {
  static MediaQueryData _mediaQuery;
  static Size size, block;

  SizeConfig(BuildContext context) {
    _mediaQuery = MediaQuery.of(context);

    size  = _mediaQuery.size;
    block = Size(
      size.width / 100,
      size.height / 100,
    );

    FontSizeConfig.small  = size.width > 600 ? 16 : 14;
    FontSizeConfig.normal = size.width > 600 ? 24 : 20;
    FontSizeConfig.large  = size.width > 600 ? 32 : 28;
  }
}
