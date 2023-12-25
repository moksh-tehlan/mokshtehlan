import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mokshtehlan/views/home/widgets/project_card.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutWidget(
      mobileWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'All Creative Works.',
            style: TextStyle(color: Colors.white, fontSize: 22.sp),
          ),
          SizedBox(
            height: 6.sp,
          ),
          Text(
            "Here's some of my projects that I have worked on.",
            style: TextStyle(
              color: Colors.white.withOpacity(0.6),
              fontSize: 16.sp,
            ),
          ),
          SizedBox(
            height: 6.sp,
          ),
          Text(
            'Explore more ->',
            style: TextStyle(color: Colors.green, fontSize: 16.sp),
          ),
          SizedBox(
            height: 20.sp,
          ),
          SizedBox(
            height: 400.sp,
            child: const ProjectsCard(),
          ),
          SizedBox(
            height: 20.sp,
          ),
          SizedBox(
            height: 400.sp,
            child: const ProjectsCard(),
          ),
          SizedBox(
            height: 20.sp,
          ),
          SizedBox(
            height: 400.sp,
            child: const ProjectsCard(),
          ),
        ],
      ),
      desktopWidget: StaggeredGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 40.sp,
        crossAxisSpacing: 40.sp,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 0.25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'All Creative Works.',
                  style: TextStyle(color: Colors.white, fontSize: 30.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Here's some of my projects that I have worked on.",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 22.sp,
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Text(
                  'Explore more ->',
                  style: TextStyle(color: Colors.green, fontSize: 22.sp),
                ),
              ],
            ),
          ),
          const StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 0.65,
            child: ProjectsCard(),
          ),
          const StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 0.65,
            child: ProjectsCard(),
          ),
          const StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 0.65,
            child: ProjectsCard(),
          ),
        ],
      ),
    );
  }
}
