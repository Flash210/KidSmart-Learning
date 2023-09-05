import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentClass extends StatelessWidget {
  StudentClass({super.key, this.studentClass});

  final studentClass;

  @override
  Widget build(BuildContext context) {
    return Text(
      studentClass,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 14.0),
    );
  }
}
