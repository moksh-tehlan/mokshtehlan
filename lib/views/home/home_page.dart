import 'package:app_ui/app_ui.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mokshtehlan/views/home/components/app_bar.dart';
import 'package:mokshtehlan/views/home/components/caset_image.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePageView();
  }
}

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80).r,
          child: const TopBar(),
        ),
        titleSpacing: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80).r,
        child: SizedBox(
          width: context.screenWidth,
          height: context.screenHeight,
          child: Row(
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
                      fontWeight: AppFontWeight.bold
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
                              fontSize: 44.sp,
                            ),
                          ),
                          TextSpan(
                            text:
                                'A self-taught developer with an interest in Computer Science.',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 44.sp,
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const CasetImage(),
            ],
          ),
        ),
      ),
    );
  }
}
