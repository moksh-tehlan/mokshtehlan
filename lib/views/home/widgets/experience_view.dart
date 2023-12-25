import 'package:app_ui/app_ui.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dashed_line.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({
    required this.companyName,
    required this.workingDate,
    required this.designation,
    required this.description,
    required this.highlightColor,
    this.isLastItem = false,
    super.key,
  });

  final String companyName;
  final String workingDate;
  final String designation;
  final String description;
  final Color highlightColor;
  final bool isLastItem;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutWidget(
      mobileWidget: SizedBox(
        height: 250.sp,
        width: context.screenWidth,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                DottedBorder(
                  strokeWidth: 1.5,
                  radius: const Radius.circular(50).r,
                  padding: const EdgeInsets.all(8),
                  borderType: BorderType.Circle,
                  dashPattern: const [3, 5],
                  color: Colors.white,
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: highlightColor,
                      borderRadius: BorderRadius.circular(50).r,
                    ),
                  ),
                ),
                Visibility(
                  visible: !isLastItem,
                  child: const SizedBox(
                    height: 4,
                  ),
                ),
                Visibility(
                  visible: !isLastItem,
                  child: Expanded(
                    child: CustomPaint(
                      size: const Size(1, double.infinity),
                      painter: DashedLineVerticalPainter(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    designation,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 22.sp,
                    ),
                  ),
                  SizedBox(
                    height: 5.sp,
                  ),
                  Text(
                    companyName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                    ),
                  ),
                  Text(
                    workingDate,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    height: 8.sp,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      desktopWidget: SizedBox(
        height: 380.sp,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    companyName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.sp,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    workingDate,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 22.sp,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 50.w,
            ),
            Column(
              children: [
                DottedBorder(
                  strokeWidth: 1.5,
                  radius: const Radius.circular(50).r,
                  padding: const EdgeInsets.all(10).r,
                  borderType: BorderType.Circle,
                  dashPattern: const [3, 5],
                  color: Colors.white,
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: highlightColor,
                      borderRadius: BorderRadius.circular(50).r,
                    ),
                  ),
                ),
                Visibility(
                  visible: !isLastItem,
                  child: const SizedBox(
                    height: 4,
                  ),
                ),
                Visibility(
                  visible: !isLastItem,
                  child: Expanded(
                    child: CustomPaint(
                      size: const Size(1, double.infinity),
                      painter: DashedLineVerticalPainter(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 50.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    designation,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 32.sp,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 26.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
