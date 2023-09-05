import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../constants/image_string.dart';

class StudentInfo extends StatelessWidget {
  StudentInfo({super.key, required this.studentName});

  final String studentName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(kWelcomeStudent1,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.w200)),
                Text(studentName,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.w500))
              ],
            ),
            const SizedBox(height: kDefaultPadding / 2),
            Text(
              kStudentClass,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontSize: 14.0),
            ),
            Container(
              width: 100,
              height: 20,
              decoration: BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.circular(kDefaultPadding)),
              child: const Center(
                child: Text(kSchollYear,
                    style: TextStyle(
                        fontSize: 12.0,
                        color: kTextBlackColor,
                        fontWeight: FontWeight.w200)),
              ),
            )
          ],
        ),
        const SizedBox(height: kDefaultPadding / 6),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/profile_screen');
          },
          child: const CircleAvatar(
            minRadius: 50.0,
            maxRadius: 50.0,
            backgroundColor: kSecondaryColor,
            backgroundImage: AssetImage(kHomeScreenImage),
          ),
        ),
      ],
    );
  }
}
