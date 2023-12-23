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
    const topBarHeight = 80.0;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 120).r,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.white,
                  width: context.isMobile ? 0.40 : 0.25,
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
                      height: context.isMobile
                          ? 0.35.sh
                          : context.screenHeight - topBarHeight,
                      child: const LandingPage(),
                    ),
                    SizedBox(
                      width: context.screenWidth,
                      child: const WorkExperiencePage(),
                    ),
                    SizedBox(
                      height: context.isMobile ? 30 : 80.h,
                    ),
                    const ProjectPage(),
                    SizedBox(
                      height: context.isMobile ? 60 : 200.h,
                    ),
                    const FooterPage(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
