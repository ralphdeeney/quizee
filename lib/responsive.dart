// ignore_for_file: depend_on_referenced_packages, use_key_in_widget_constructors,prefer_const_constructors, sized_box_for_whitespace, no_leading_underscores_for_local_identifiers, unnecessary_null_comparison
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final Widget smallMobile;

  const Responsive(
      {required Key key,
      required this.mobile,
      required this.tablet,
      required this.desktop,
      required this.smallMobile})
      : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop help us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 768;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1200 &&
      MediaQuery.of(context).size.width >= 768;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // If our width is more than 1200 then we consider it a desktop
    if (_size.width >= 1200) {
      return desktop;
    }
    // If width it less then 1200 and more then 768 we consider it as tablet
    // ignore:
    else if (_size.width >= 768 && tablet != null) {
      return tablet;
    }
    // Or less then that we called it mobile
    else if (_size.width >= 376 && _size.width <= 768 && mobile != null) {
      return mobile;
    } else {
      return smallMobile;
    }
  }
}
