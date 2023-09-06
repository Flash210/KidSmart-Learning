import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class StudentPicture extends StatelessWidget {
  const StudentPicture(
      {super.key, required this.imgStudent, required this.onTap});

  final String imgStudent;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
          minRadius: 50.0,
          maxRadius: 50.0,
          backgroundColor: kSecondaryColor,
          backgroundImage: AssetImage(imgStudent)),
    );
  }
}
