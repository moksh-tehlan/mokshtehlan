import 'package:app_ui/app_ui.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:mokshtehlan/views/home/components/app_bar.dart';

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
      backgroundColor: const Color(0xff363543),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 80).responsive(context),
          child: const TopBar(),
        ),
        titleSpacing: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80).responsive(context),
        child: SizedBox(
          width: context.screenWidth,
          height: context.screenHeight,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.50),
                maxRadius: context.screenWidth * 0.20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "I'm",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.3),
                          fontSize: 100,
                        ),
                      ),
                      const Text(
                        'Moksh Tehlan',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 140,
                        ),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.15,
                        child: const Divider(
                          color: Colors.yellow,
                          thickness: 15,
                        ),
                      ),
                      SizedBox(
                        height: 30.toResponsiveHeight(context),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.28,
                        child: const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                          style: TextStyle(color: Colors.white, height: 2),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Text(
                        'Services',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.3),
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 10.toResponsiveHeight(context),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.28,
                        child: const Text(
                          "Let's build quality products in programming and design with my services",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.toResponsiveHeight(context),
                      ),
                      Row(
                        children: [
                          const Text(
                            'Show more',
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(
                            width: 10.toResponsiveWidth(context),
                          ),
                          const Icon(
                            Icons.arrow_right_alt,
                            color: Colors.yellow,
                            size: 30,
                          )
                        ],
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                ],
              ),
              Image.asset(
                Assets.profileImage,
                width: context.screenWidth,
                height: context.screenHeight,
                fit: BoxFit.fitHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
