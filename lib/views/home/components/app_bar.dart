import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutWidget(
      mobileWidget: Row(
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
                    fontSize: 30.sp,
                  ),
                ),
                TextSpan(
                  text: 'Moksh Tehlan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.sp,
                  ),
                ),
                TextSpan(
                  text: ' }',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontWeight: FontWeight.w900,
                    fontSize: 30.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      desktopWidget: Row(
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
                    fontSize: 40.sp,
                  ),
                ),
                TextSpan(
                  text: 'Moksh Tehlan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36.sp,
                  ),
                ),
                TextSpan(
                  text: ' }',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontWeight: FontWeight.w900,
                    fontSize: 40.sp,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Image.asset(
            Assets.printerImage,
            color: Colors.white,
            width: 35.sp,
            height: 35.sp,
          ),
          // topBarText('Home', isSelected: true),
          SizedBox(
            width: 40.w,
          ),
          SvgPicture.asset(
            Assets.linkedInLogo,
            color: Colors.white,
            width: 35.sp,
            height: 35.sp,
          ),
          SizedBox(
            width: 40.w,
          ),
          Image.asset(
            Assets.emailImage,
            color: Colors.white,
            width: 35.sp,
            height: 35.sp,
          ),
          SizedBox(
            width: 40.w,
          ),
          SvgPicture.asset(
            Assets.githubLogo,
            color: Colors.white,
            width: 40.sp,
            height: 40.sp,
          ),
        ],
      ),
    );
  }
}
