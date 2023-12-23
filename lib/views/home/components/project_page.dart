import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mokshtehlan/views/home/widgets/project_card.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 2,
      mainAxisSpacing: 40,
      crossAxisSpacing: 40,
      children: [
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 0.25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'All Creative Works.',
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Here's some of my projects that I have worked on.",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const Text(
                'Explore more ->',
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
            ],
          ),
        ),
        /// TODO(moksh): Screen Size for smaller hight need to be fixed
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
    );
  }
}
