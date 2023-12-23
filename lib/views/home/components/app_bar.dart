import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '{ ',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontWeight: FontWeight.w900,
                  fontSize: 34,
                ),
              ),
              const TextSpan(
                text: 'Moksh Tehlan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              TextSpan(
                text: ' }',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontWeight: FontWeight.w900,
                  fontSize: 34,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        Image.asset(
          Assets.printerImage,
          color: Colors.white,
          width: 35,
          height: 35,
        ),
        // topBarText('Home', isSelected: true),
        SizedBox(
          width: 40.w,
        ),
        SvgPicture.asset(
          Assets.linkedInLogo,
          color: Colors.white,
          width: 35,
          height: 35,
        ),
        SizedBox(
          width: 40.w,
        ),
        Image.asset(
          Assets.emailImage,
          color: Colors.white,
          width: 35,
          height: 35,
        ),
        SizedBox(
          width: 40.w,
        ),
        SvgPicture.asset(
          Assets.githubLogo,
          color: Colors.white,
          width: 40,
          height: 40,
        ),
      ],
    );
  }
}
