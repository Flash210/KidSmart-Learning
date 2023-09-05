import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class StudentPicture extends StatelessWidget {
  const StudentPicture({super.key, required this.imgStudent});

  final String imgStudent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/profile_screen');
      },
      child: CircleAvatar(
          minRadius: 50.0,
          maxRadius: 50.0,
          backgroundColor: kSecondaryColor,
          backgroundImage: AssetImage(imgStudent)),
    );
  }
}
