import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Moksh Tehlan'),
        const Spacer(),
        topBarText('Home', isSelected: true),
        SizedBox(
          width: 10.toResponsiveWidth(context),
        ),
        topBarText('About Me'),
        SizedBox(
          width: 10.toResponsiveWidth(context),
        ),
        topBarText('Portfolio'),
        SizedBox(
          width: 10.toResponsiveWidth(context),
        ),
        topBarText('Resume'),
        SizedBox(
          width: 10.toResponsiveWidth(context),
        ),
        topBarText('Skills'),
        SizedBox(
          width: 10.toResponsiveWidth(context),
        ),
        topBarText('Contact me'),
      ],
    );
  }

  Text topBarText(String text, {bool isSelected = false}) => Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: isSelected ? Colors.white : Colors.white.withOpacity(0.5),
        ),
      );
}
