import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kid_smart_learning/constants/constants.dart';
import 'package:kid_smart_learning/screens/assigment_screen/card_details.dart';

import 'data/assigment_data.dart';

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({super.key});

  static String routeName = '/assignment_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
              color: kOtherColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding),
                topRight: Radius.circular(kDefaultPadding),
              ),
            ),
            child: ListView.builder(
                itemCount: assigment.length,
                itemBuilder: (context, int index) {
                  return MyCircularCard(
                    subjectName: assigment[index].subjectName,
                    topicName: assigment[index].topicName,
                    assignDate: assigment[index].assignDate,
                    lastDate: assigment[index].lastDate,
                    status: assigment[index].status,
                  );
                }),
          ))
        ],
      ),
    );
  }
}
