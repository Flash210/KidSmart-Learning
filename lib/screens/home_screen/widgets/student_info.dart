import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../constants/image_string.dart';

class StudentInfo extends StatelessWidget {
  StudentInfo({super.key, required this.studentName});

  final String studentName;

  @override
  Widget build(BuildContext context) {
    return Row(
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
                ?.copyWith(fontWeight: FontWeight.w500)),
        SizedBox(height: kDefaultPadding / 6),
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
        )
      ],
    );
  }
}
