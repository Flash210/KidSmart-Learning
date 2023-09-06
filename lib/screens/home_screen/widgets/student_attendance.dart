import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class StudentData extends StatelessWidget {
  StudentData(
      {super.key,
      required this.title,
      required this.value,
      required this.onTap});

  final String title;
  final String value;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: MediaQuery.of(context).size.height / 9,
          decoration: BoxDecoration(
              color: kOtherColor,
              borderRadius: BorderRadius.circular(kDefaultPadding)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold)),
              Text(value,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 25.0,
                      color: kTextBlackColor,
                      fontWeight: FontWeight.w300)),
            ],
          )),
    );
  }
}
