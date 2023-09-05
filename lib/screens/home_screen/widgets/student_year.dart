import 'package:flutter/cupertino.dart';

import '../../../constants/constants.dart';

class StudentYear extends StatelessWidget {
  StudentYear({super.key, required this.studentYear});

  final String studentYear;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 20,
      decoration: BoxDecoration(
          color: kOtherColor,
          borderRadius: BorderRadius.circular(kDefaultPadding)),
      child: Center(
        child: Text(studentYear,
            style: const TextStyle(
                fontSize: 12.0,
                color: kTextBlackColor,
                fontWeight: FontWeight.w200)),
      ),
    );
  }
}
