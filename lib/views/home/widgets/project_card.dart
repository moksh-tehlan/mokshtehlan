import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mokshtehlan/views/home/widgets/tech_card.dart';

class ProjectsCard extends StatelessWidget {
  const ProjectsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutWidget(
      mobileWidget: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white.withOpacity(0.5),
            width: 0.25,
          ),
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xff080808),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(20).r,
                    topRight: const Radius.circular(20).r,
                  ),
                  color: Colors.pink,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20).r,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Movie Mania',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.sp,
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        Assets.githubImage,
                        width: 25.w,
                        height: 25.w,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Image.asset(
                        Assets.externalLinkImage,
                        width: 25.w,
                        height: 25.w,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  const Row(
                    children: [
                      TechCard(
                        title: 'Flutter',
                        color: AppColors.blue,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      TechCard(
                        title: 'Dart',
                        color: Color(0xffFBD38D),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      TechCard(
                        title: 'Firebase',
                        color: AppColors.green,
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.white,
                    thickness: 0.25,
                  ),
                  Text(
                    'Movie Mania is movie recommendation app which shows top movies and tv shows around the world trending right now it has a inbuilt search feature which can be used to get the details of movies like there imdb rating and user reviews..',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 14.sp,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      desktopWidget: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white.withOpacity(0.5),
            width: 0.25,
          ),
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xff080808),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(20).r,
                    topRight: const Radius.circular(20).r,
                  ),
                  color: Colors.pink,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20).r,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Movie Mania',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.sp,
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        Assets.githubImage,
                        width: 30.w,
                        height: 30.w,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Image.asset(
                        Assets.externalLinkImage,
                        width: 30.w,
                        height: 30.w,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  const Row(
                    children: [
                      TechCard(
                        title: 'Flutter',
                        color: AppColors.blue,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      TechCard(
                        title: 'Dart',
                        color: Color(0xffFBD38D),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      TechCard(
                        title: 'Firebase',
                        color: AppColors.green,
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.white,
                    thickness: 0.25,
                  ),
                  Text(
                    'Movie Mania is movie recommendation app which shows top movies and tv shows around the world trending right now it has a inbuilt search feature which can be used to get the details of movies like there imdb rating and user reviews..',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 16.sp,
                      height: 1.5,
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
