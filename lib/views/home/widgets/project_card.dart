import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mokshtehlan/views/home/widgets/tech_card.dart';

class ProjectsCard extends StatelessWidget {
  const ProjectsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
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
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.pink,
              ),
            ),
          ),
          Container(
            padding: context.isMobile
                ? const EdgeInsets.all(10)
                : const EdgeInsets.all(20).r,
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
                          fontSize: context.isMobile ? 22 : 28),
                    ),
                    const Spacer(),
                    Image.asset(
                      Assets.githubImage,
                      width: context.isMobile ? 20 : 30.w,
                      height: context.isMobile ? 20 : 30.w,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: context.isMobile ? 15 : 20.w,
                    ),
                    Image.asset(
                      Assets.externalLinkImage,
                      width: context.isMobile ? 20 : 30.w,
                      height: context.isMobile ? 20 : 30.w,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: context.isMobile ? 12 : 20.h,
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
                    fontSize: context.isMobile ? 14: 16,
                    height: context.isMobile ? 1.25 : 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
