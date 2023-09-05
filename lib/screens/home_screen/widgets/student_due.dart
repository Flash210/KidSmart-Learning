import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class StudentDue extends StatelessWidget {
  const StudentDue({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/attendance_screen');
      },
      child: Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: MediaQuery.of(context).size.height / 9,
          decoration: BoxDecoration(
              color: kOtherColor,
              borderRadius: BorderRadius.circular(kDefaultPadding)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(KFessDue,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold)),
              Text(kPercentageF,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 25.0,
                      color: kTextBlackColor,
                      fontWeight: FontWeight.w300)),
            ],
          )),
    );
  }
}
