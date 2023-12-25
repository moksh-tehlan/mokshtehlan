import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutWidget(
      mobileWidget: Column(
        children: [
          Text(
            "THAT'S ALL FOLKS!",
            style: TextStyle(
              color: Colors.white.withOpacity(0.6),
              letterSpacing: 5,
              fontSize: 12.sp,
            ),
          ),
          Text(
            'Moksh Tehlan',
            style: TextStyle(
              color: Colors.green,
              fontSize: 40.sp,
            ),
          ),
          SizedBox(
            height: 50.sp,
          ),
          Text(
            'MADE WITH',
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              letterSpacing: 5,
              fontSize: 12.sp,
            ),
          ),
          SizedBox(
            height: 20.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.flutterLogo,
                width: 35.sp,
                height: 35.sp,
              ),
              SvgPicture.asset(
                Assets.dartLogo,
                width: 35.w,
                height: 35.w,
              ),
            ],
          ),
          SizedBox(
            height: 10.sp,
          ),
          Text(
            'All logos, trademarks, and brand names are the property of their respective owners.',
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontSize: 12.sp,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.sp,
          ),
          Text(
            'Hand-coded with 100% human efforts, zero AI.',
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
      desktopWidget: Column(
        children: [
          Text(
            "THAT'S ALL FOLKS!",
            style: TextStyle(
              color: Colors.white.withOpacity(0.6),
              letterSpacing: 5,
              fontSize: 16.sp,
            ),
          ),
          Text(
            'Moksh Tehlan',
            style: TextStyle(
              color: Colors.green,
              fontSize: 55.sp,
            ),
          ),
          SizedBox(
            height: 80.sp,
          ),
          Text(
            'MADE WITH',
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              letterSpacing: 5,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(
            height: 30.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.flutterLogo,
                width: 60.sp,
                height: 60.sp,
              ),
              SvgPicture.asset(
                Assets.dartLogo,
                width: 60.w,
                height: 60.w,
              ),
            ],
          ),
          SizedBox(
            height: 20.sp,
          ),
          Text(
            'All logos, trademarks, and brand names are the property of their respective owners.',
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontSize: 16.sp,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.sp,
          ),
          Text(
            'Hand-coded with 100% human efforts, zero AI.',
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
