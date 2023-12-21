import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                  fontSize: 34.sp,
                ),
              ),
              TextSpan(
                text: 'Moksh Tehlan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.sp,
                ),
              ),
              TextSpan(
                text: ' }',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontWeight: FontWeight.w900,
                  fontSize: 34.sp,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        Image.asset(
          Assets.printerImage,
          color: Colors.white,
          width: 30.w,
          height: 30.w,
        ),
        // topBarText('Home', isSelected: true),
        SizedBox(
          width: 40.w,
        ),
        Image.asset(
          Assets.linkedinImage,
          color: Colors.white,
          width: 30.w,
          height: 30.w,
        ),
        SizedBox(
          width: 40.w,
        ),
        Image.asset(
          Assets.emailImage,
          color: Colors.white,
          width: 30.w,
          height: 30.w,
        ),
        SizedBox(
          width: 40.w,
        ),
        Image.asset(
          Assets.githubImage,
          color: Colors.white,
          width: 30.w,
          height: 30.w,
        ),
      ],
    );
  }
}
