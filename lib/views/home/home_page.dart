import 'package:app_ui/app_ui.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mokshtehlan/views/home/components/app_bar.dart';
import 'package:mokshtehlan/views/home/components/footer_page.dart';
import 'package:mokshtehlan/views/home/components/landing_page.dart';
import 'package:mokshtehlan/views/home/components/project_page.dart';
import 'package:mokshtehlan/views/home/components/work_experience_page.dart';

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
    final topBarHeight = 80.sp;
    return ResponsiveLayoutWidget(
      mobileWidget: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20).r,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 0.25,
                  ),
                ),
              ),
              height: topBarHeight,
              child: const TopBar(),
            ),
            SizedBox(
              width: context.screenWidth,
              height: context.screenHeight - topBarHeight,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20).r,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: context.screenWidth,
                        height: 360.sp,
                        child: const LandingPage(),
                      ),
                      SizedBox(
                        width: context.screenWidth,
                        child: const WorkExperiencePage(),
                      ),
                      SizedBox(
                        height: 30.sp,
                      ),
                      const ProjectPage(),
                      SizedBox(
                        height: 160.sp,
                      ),
                      const FooterPage(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      desktopWidget: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 120).r,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 0.25,
                  ),
                ),
              ),
              height: topBarHeight,
              child: const TopBar(),
            ),
            SizedBox(
              width: context.screenWidth,
              height: context.screenHeight - topBarHeight,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 120).r,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: context.screenWidth,
                        height: context.screenHeight - topBarHeight,
                        child: const LandingPage(),
                      ),
                      SizedBox(
                        width: context.screenWidth,
                        child: const WorkExperiencePage(),
                      ),
                      SizedBox(
                        height: 80.sp,
                      ),
                      const ProjectPage(),
                      SizedBox(
                        height: 160.sp,
                      ),
                      const FooterPage(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
