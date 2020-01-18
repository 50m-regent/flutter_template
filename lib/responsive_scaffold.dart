import 'package:flutter/material.dart';

import 'size_config.dart';

class ResponsiveScaffold extends StatelessWidget {
  final Scaffold large, small;

  ResponsiveScaffold({
    @required this.large,
    @required this.small,
  });

  @override
  Scaffold build(BuildContext context) {
    SizeConfig(context);

    return SizeConfig.size.width > 600 ? large : small;
  }
}
