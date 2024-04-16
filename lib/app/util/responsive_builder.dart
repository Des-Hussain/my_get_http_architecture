import 'package:my_get_http_architecture/app/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;

  final Widget? tablet;

  final Widget? desktop;

  const Responsive(
      {super.key, required this.mobile, this.tablet, this.desktop});

  static isMobile(BuildContext context) => context.width < 599;

  static isTablet(BuildContext context) =>
      context.width < 1400 && context.width > 600;

  static isDesktop(BuildContext context) => context.width >= 1400;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1400) {
        return desktop ?? mobile;
      } else if (constraints.maxWidth >= 600) {
        return tablet ?? mobile;
      } else {
        return mobile;
      }
    });
  }
}
