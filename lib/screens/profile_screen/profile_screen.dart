import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kid_smart_learning/constants/image_string.dart';
import 'package:kid_smart_learning/screens/profile_screen/widgets/profile_details.dart';
import 'package:kid_smart_learning/screens/profile_screen/widgets/profile_student_details.dart';

import '../../constants/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static String routeName = '/profile_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Profile"), actions: [
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.only(right: kDefaultPadding / 2),
            child: const Row(
              children: [
                Icon(Icons.report_gmailerrorred_outlined),
                kHalfSizedbOX,
                Text("Report"),
              ],
            ),
          ),
        )
      ]),
      body: Container(
        color: kOtherColor,
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 150.0,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(kDefaultPadding * 2),
                bottomRight: Radius.circular(kDefaultPadding * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage(kHomeScreenImage),
                ),
                kHalfWidhSizedBox,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(kWelcomeStudent2,
                        style: Theme.of(context).textTheme.titleMedium),
                    Text(kStudentClass,
                        style: Theme.of(context).textTheme.titleSmall),
                  ],
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProfileDetail(
                title: "Registration",
                value: "123456",
              ),
              ProfileDetail(
                title: "Acadelmic Year",
                value: "2023-2024",
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProfileDetail(
                title: "Admission Class",
                value: "Class A",
              ),
              ProfileDetail(
                title: "Admission Number",
                value: "001",
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProfileDetail(
                title: "Date of Admission",
                value: "2 Mai 2022",
              ),
              ProfileDetail(
                title: "Date of Birth",
                value: "3 August 2000",
              ),
            ],
          ),
          kDefaultSizedBox,
          const Studentdetails(title: "Email", value: "  student@gmail.com  "),
          const Studentdetails(title: "Father Name ", value: " Alix Aed"),
          const Studentdetails(title: "Mother Name", value: "  Ayesha Ali  "),
          const Studentdetails(title: "Phone", value: "  +91 1234567890  "),
        ]),
      ),
    );
  }
}
