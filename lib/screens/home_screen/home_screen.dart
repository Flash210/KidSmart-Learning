import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kid_smart_learning/constants/constants.dart';
import 'package:kid_smart_learning/screens/home_screen/widgets/student_info.dart';

import '../../constants/image_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = '/home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StudentInfo(studentName: "ll"),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: kDefaultPadding / 2),
                    const SizedBox(height: kDefaultPadding / 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/attendance_screen');
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width / 2.5,
                              height: MediaQuery.of(context).size.height / 9,
                              decoration: BoxDecoration(
                                  color: kOtherColor,
                                  borderRadius:
                                      BorderRadius.circular(kDefaultPadding)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(kAttendance,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.bold)),
                                  Text(kPercentage,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(
                                              fontSize: 25.0,
                                              color: kTextBlackColor,
                                              fontWeight: FontWeight.w300)),
                                ],
                              )),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/attendance_screen');
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width / 2.5,
                              height: MediaQuery.of(context).size.height / 9,
                              decoration: BoxDecoration(
                                  color: kOtherColor,
                                  borderRadius:
                                      BorderRadius.circular(kDefaultPadding)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(KFessDue,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.bold)),
                                  Text(kPercentageF,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(
                                              fontSize: 25.0,
                                              color: kTextBlackColor,
                                              fontWeight: FontWeight.w300)),
                                ],
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 3),
                    topRight: Radius.circular(kDefaultPadding * 3),
                  ),
                ),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            onPressed: () {}, title: kQuiz, icon: kQuizImg),
                        HomeCard(
                          title: kAssignment,
                          icon: kAssignmentImg,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          title: kHoliday,
                          icon: kCalendarImg,
                          onPressed: () {},
                        ),
                        HomeCard(
                            onPressed: () {}, title: kTable, icon: kTableImg),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          title: kResult,
                          icon: kResultImg,
                          onPressed: () {},
                        ),
                        HomeCard(
                            onPressed: () {}, title: kSheet, icon: kSheetImg),
                      ],
                    ),

// *******************************************************
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(onPressed: () {}, title: kAsk, icon: kAskImg),
                        HomeCard(
                          title: kGallery,
                          icon: kGalleryImg,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          title: kLeave,
                          icon: kLeaveImg,
                          onPressed: () {},
                        ),
                        HomeCard(
                            onPressed: () {},
                            title: kChangePassword,
                            icon: kChangePasswordImg),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          title: kEvent,
                          icon: kEventImg,
                          onPressed: () {},
                        ),
                        HomeCard(
                            onPressed: () {}, title: kLogOut, icon: kLogOutImg),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  HomeCard(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.icon});

  final VoidCallback onPressed;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding / 2),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(kDefaultPadding / 2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              icon,
              width: 40.0,
              height: 40.0,
              color: kOtherColor,
            ),
            Text(title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle2),
            SizedBox(height: kDefaultPadding / 3),
          ],
        ),
      ),
    );
  }
}
