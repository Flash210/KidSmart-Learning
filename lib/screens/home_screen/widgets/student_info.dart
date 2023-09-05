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
                ?.copyWith(fontWeight: FontWeight.w500))
      ],
    );
  }
}
