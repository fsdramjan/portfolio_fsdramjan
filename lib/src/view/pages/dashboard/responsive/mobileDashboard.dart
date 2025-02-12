import 'package:flutter/material.dart';
import 'package:fsdramjan/src/service/configs/appColors.dart';
import 'package:fsdramjan/src/service/helpers/kText.dart';
import 'package:fsdramjan/src/service/helpers/sizedBox.dart';
import 'package:fsdramjan/src/service/webHeaderText.dart';
import 'package:fsdramjan/src/view/widgets/card/cardWidget.dart';

class MobileDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebHeaderTabTextService(
      child: Scaffold(
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
                      CardWidget(
                        width: deviceSize(context).width,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/img/phoneTouch.png',
                              height: 50,
                              color: Colors.amber,
                            ),
                            sizedboxH(10),
                            KText(
                              text: 'Mobile Apps',
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                            sizedboxH(5),
                            KText(
                              text:
                                  'Professional development of applications for Android and ios.',
                              fontWeight: FontWeight.normal,
                              textAlign: TextAlign.center,
                              fontSize: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      headerText: 'Fsd Ramjan',
    );
  }
}
