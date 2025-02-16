import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:fsdramjan/src/service/configs/appColors.dart';
import 'package:fsdramjan/src/service/helpers/kText.dart';
import 'package:fsdramjan/src/service/helpers/sizedBox.dart';
import 'package:fsdramjan/src/service/webHeaderText.dart';
import 'package:fsdramjan/src/view/widgets/bottomNavigation/customBottomNavigation.dart';
import 'package:fsdramjan/src/view/widgets/card/cardWidget.dart';

class MobileDashboard extends StatefulWidget {
  @override
  State<MobileDashboard> createState() => _MobileDashboardState();
}

class _MobileDashboardState extends State<MobileDashboard> {
  @override
  Widget build(BuildContext context) {
    return WebHeaderTabTextService(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: CustomBottomNavigation(),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CardWidget(
                  height: 120,
                  child: Row(
                    children: [
                      CardWidget(
                        cardColor: Appcolors.grey,
                        child: Image.asset(
                          'assets/img/fsdramjan.png',
                          // height: 200,
                        ),
                      ),
                      sizedboxW(20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          KText(
                            text: 'Fsd Ramjan',
                            letterSpacing: 2,
                            fontSize: 17,
                          ),
                          sizedboxH(5),
                          CardWidget(
                            cardMargin: EdgeInsets.zero,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            cardColor: Appcolors.grey,
                            child: KText(
                              text: 'Flutter Developer',
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                sizedboxH(20),
                CardWidget(
                  cardColor: Appcolors.backgroundColor,
                  width: deviceSize(context).width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sizedboxH(10),
                      KText(
                        text: 'About Me',
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                      Container(
                        height: 3,
                        width: deviceSize(context).width / 10,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      sizedboxH(10),
                      KText(
                        text:
                            '''A passionate Flutter developer with strong expertise in cross-platform apps, REST APIs, UI/UX, widgets, and state management solutions. Proven track record in delivering cutting-edge solutions, including API integration, third-party libraries, and performance optimization. Adept at debugging to ensure high-quality, responsive apps and An agile collaborator committed to staying current with industry trends.

If you're seeking a skilled Flutter developer to breathe life into your project and exceed your expectations, I am here to collaborate and create magic together. Reach out, and let's transform your vision into a reality!''',
                        fontWeight: FontWeight.normal,
                      ),
                      sizedboxH(20),
                      KText(
                        text: '''What I'm Doing''',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      sizedboxH(20),
                      skillUI(
                        context: context,
                        image: 'assets/img/phoneTouch.png',
                        title: 'Mobile Apps',
                        description:
                            'Professional development of applications for Android and ios.',
                      ),
                      sizedboxH(20),
                      skillUI(
                        context: context,
                        image: 'assets/img/webDevelopment.png',
                        title: 'Web development',
                        description:
                            'High-quality development of sites at the professional level.',
                      ),
                      sizedboxH(20),
                      skillUI(
                        context: context,
                        image: 'assets/img/uiux.png',
                        title: 'UI/UX Design',
                        description:
                            'The most modern and high-quality design made at a professional level.',
                      ),
                      sizedboxH(20),
                      skillUI(
                        context: context,
                        image: 'assets/img/backend.png',
                        title: 'Backend Development',
                        description:
                            'High-performance backend services designed for scalability and seamless user experience.',
                      ),
                      sizedboxH(20),
                    ],
                  ),
                ),
                sizedboxH(80),
              ],
            ),
          ),
        ),
      ),
      headerText: 'Fsd Ramjan',
    );
  }

  Widget skillUI({
    required BuildContext context,
    required String image,
    required String title,
    required String description,
  }) {
    return CardWidget(
      width: deviceSize(context).width,
      child: Column(
        children: [
          Image.asset(
            image,
            height: 45,
            color: const Color.fromARGB(255, 228, 195, 95),
          ),
          sizedboxH(10),
          KText(
            text: title,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
          sizedboxH(5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: KText(
              text: description,
              fontWeight: FontWeight.normal,
              textAlign: TextAlign.center,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
