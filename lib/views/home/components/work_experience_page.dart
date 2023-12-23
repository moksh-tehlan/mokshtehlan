import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/experience_view.dart';

class WorkExperiencePage extends StatelessWidget {
  const WorkExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return context.isMobile
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '</ ',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6), fontSize: 26),
                    ),
                    const TextSpan(
                      text: 'My Work Experience',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    TextSpan(
                      text: ' >',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6), fontSize: 26),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const ExperienceView(
                companyName: 'Grappus',
                workingDate: 'June 2023 - Present',
                designation: 'Android | Flutter Developer',
                description:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sodales lorem quis porta pharetra. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In hac habitasse platea dictumst. Sed semper mi non tincidunt rutrum. Integer vitae mauris nulla. Morbi eu lorem sed erat ultrices ullamcorper.',
                highlightColor: Colors.pink,
              ),
              const ExperienceView(
                companyName: 'Grappus',
                workingDate: 'December 2022 - June 2023',
                designation: 'Flutter Developer Intern',
                description:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sodales lorem quis porta pharetra. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In hac habitasse platea dictumst. Sed semper mi non tincidunt rutrum. Integer vitae mauris nulla. Morbi eu lorem sed erat ultrices ullamcorper.',
                highlightColor: Colors.yellow,
              ),
              const ExperienceView(
                companyName: 'SAP Labs India',
                workingDate: 'July 2022 - September 2022',
                designation: 'Software Developer Intern',
                description:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sodales lorem quis porta pharetra. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In hac habitasse platea dictumst. Sed semper mi non tincidunt rutrum. Integer vitae mauris nulla. Morbi eu lorem sed erat ultrices ullamcorper.',
                highlightColor: Colors.blue,
                isLastItem: true,
              ),
            ],
          )
        : Column(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '</ ',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6), fontSize: 48),
                    ),
                    const TextSpan(
                      text: 'My Work Experience',
                      style: TextStyle(color: Colors.white, fontSize: 42),
                    ),
                    TextSpan(
                      text: ' >',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6), fontSize: 48),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              const ExperienceView(
                companyName: 'Grappus',
                workingDate: 'June 2023 - Present',
                designation: 'Android | Flutter Developer',
                description:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sodales lorem quis porta pharetra. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In hac habitasse platea dictumst. Sed semper mi non tincidunt rutrum. Integer vitae mauris nulla. Morbi eu lorem sed erat ultrices ullamcorper.',
                highlightColor: Colors.pink,
              ),
              const ExperienceView(
                companyName: 'Grappus',
                workingDate: 'December 2022 - June 2023',
                designation: 'Flutter Developer Intern',
                description:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sodales lorem quis porta pharetra. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In hac habitasse platea dictumst. Sed semper mi non tincidunt rutrum. Integer vitae mauris nulla. Morbi eu lorem sed erat ultrices ullamcorper.',
                highlightColor: Colors.yellow,
              ),
              const ExperienceView(
                companyName: 'SAP Labs India',
                workingDate: 'July 2022 - September 2022',
                designation: 'Software Developer Intern',
                description:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sodales lorem quis porta pharetra. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In hac habitasse platea dictumst. Sed semper mi non tincidunt rutrum. Integer vitae mauris nulla. Morbi eu lorem sed erat ultrices ullamcorper.',
                highlightColor: Colors.blue,
                isLastItem: true,
              ),
            ],
          );
  }
}
