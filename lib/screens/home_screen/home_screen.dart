import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kid_smart_learning/constants/constants.dart';
import 'package:kid_smart_learning/screens/assigment_screen/assignment_screen.dart';
import 'package:kid_smart_learning/screens/datasheet_screen/datasheet_screen.dart';
import 'package:kid_smart_learning/screens/home_screen/widgets/home_card.dart';
import 'package:kid_smart_learning/screens/home_screen/widgets/student_attendance.dart';
import 'package:kid_smart_learning/screens/home_screen/widgets/student_class.dart';
import 'package:kid_smart_learning/screens/home_screen/widgets/student_due.dart';
import 'package:kid_smart_learning/screens/home_screen/widgets/student_img.dart';
import 'package:kid_smart_learning/screens/home_screen/widgets/student_info.dart';
import 'package:kid_smart_learning/screens/home_screen/widgets/student_year.dart';

import '../../constants/image_string.dart';
import '../profile_screen/profile_screen.dart';

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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            StudentInfo(studentName: kWelcomeStudent2),
                            const SizedBox(height: kDefaultPadding / 2),
                            StudentClass(studentClass: kStudentClass),
                            StudentYear(studentYear: kSchollYear),
                          ],
                        ),
                        const SizedBox(height: kDefaultPadding / 6),
                        StudentPicture(
                            imgStudent: kHomeScreenImage,
                            onTap: () {
                              Navigator.pushNamed(
                                  context, ProfileScreen.routeName);
                            }),
                      ],
                    ),
                    const SizedBox(height: kDefaultPadding / 2),
                    const SizedBox(height: kDefaultPadding / 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        StudentData(
                            title: kAttendance,
                            value: kPercentage,
                            onTap: () {}),
                        StudentData(
                            title: KFessDue, value: kPercentageF, onTap: () {})
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
                          onPressed: () {
                            Navigator.pushNamed(
                                context, AssignmentScreen.routeName);
                          },
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
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, DataSheetScreen.routeName);
                            },
                            title: kSheet,
                            icon: kSheetImg),
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
