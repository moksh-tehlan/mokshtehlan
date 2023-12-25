import 'package:flutter/material.dart';

class ScreenUtils {
  static const double figmaScreenHeight = 972;
  static const double figmaScreenWidth = 1920;
}

/// Converts the value with respect to the component:figma Screen ratio.
extension ResponsiveIntegerConstraints on num {
  double rh(BuildContext context) {
    return this * context.screenHeight / ScreenUtils.figmaScreenHeight;
  }

  double rw(BuildContext context) {
    return this * context.screenWidth / ScreenUtils.figmaScreenWidth;
  }
}

extension ScreenDimensions on BuildContext {
  double get screenHeight => MediaQuery.sizeOf(this).height;

  double get screenWidth => MediaQuery.sizeOf(this).width;
}

extension ResponsiveEdgeInsets on EdgeInsets {
  EdgeInsets responsive(BuildContext context) => copyWith(
        left: left.rw(context),
        right: right.rw(context),
        top: top.rh(context),
        bottom: bottom.rh(context),
      );
}

class ResponsiveLayoutWidget extends StatelessWidget {
  const ResponsiveLayoutWidget({
    super.key,
    this.tabWidget,
    this.mobileWidget,
    this.desktopWidget,
  });

  final Widget? tabWidget;
  final Widget? mobileWidget;
  final Widget? desktopWidget;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // if (context.isTab) {
        //   return tabWidget ?? const SizedBox.shrink();
        // } else
          if (context.isMobile) {
          return mobileWidget ?? const SizedBox.shrink();
        } else {
          return desktopWidget ?? const SizedBox.shrink();
        }
      },
    );
  }
}

extension ContextExtension on BuildContext {
  bool get isMobile =>
      (MediaQuery.of(this).size.width) < ResponsiveUtils.mobileWidthBreakpoint;

  bool get isTab =>
      (MediaQuery.of(this).size.width) < ResponsiveUtils.tabWidthBreakpoint;

  bool get isDesktop =>
      (MediaQuery.of(this).size.width) >= ResponsiveUtils.tabWidthBreakpoint;
}

class ResponsiveUtils {
  static const int tabWidthBreakpoint = 885;
  static const int mobileWidthBreakpoint = 481;
}
