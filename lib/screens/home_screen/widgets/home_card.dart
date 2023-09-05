import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/constants.dart';

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
