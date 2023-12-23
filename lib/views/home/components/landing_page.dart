import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mokshtehlan/views/home/components/caset_image.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return
    context.isMobile?
        Stack(
          alignment: Alignment.center,
          children: [
            const CasetImage(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hey there!, I'm-",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 22,
                  ),
                ),
                const Text(
                  'Moksh Tehlan.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: AppFontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Software Engineer. ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      TextSpan(
                        text:
                        'A self-taught developer with an interest in Computer Science.',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  '🚀 Exploring opportunities and side projects.',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '💻 Currently specializing in ',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 12,
                        ),
                      ),
                      const TextSpan(
                        text: 'Android and Flutter Development',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        )
      :Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hey there!, I'm-",
              style: TextStyle(
                color: Colors.green,
                fontSize: 44.sp,
              ),
            ),
            Text(
              'Moksh Tehlan.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 140.sp,
                fontWeight: AppFontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              width: 0.55.sw,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Software Engineer. ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.sp,
                      ),
                    ),
                    TextSpan(
                      text:
                          'A self-taught developer with an interest in Computer Science.',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 40.sp,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              '🚀 Exploring opportunities and side projects.',
              style: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontSize: 28.sp,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '💻 Currently specializing in ',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 28.sp,
                    ),
                  ),
                  TextSpan(
                    text: 'Android and Flutter Development',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 28.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Spacer(),
        const CasetImage(),
      ],
    );
  }
}
