import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kid_smart_learning/componet/custom_button.dart';
import 'package:kid_smart_learning/constants/constants.dart';

class MyCircularCard extends StatelessWidget {
  const MyCircularCard(
      {super.key,
      required this.subjectName,
      required this.topicName,
      required this.assignDate,
      required this.lastDate,
      required this.status});

  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(kDefaultPadding),
      margin: const EdgeInsets.only(
          left: kDefaultPadding, right: kDefaultPadding, top: kDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultPadding),
        border: Border.all(
          color: kPrimaryColor,
          width: 0.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 5,
              bottom: kDefaultPadding / 5,
            ),

            height: 40,
            width: 120,
            //  margin: const EdgeInsets.only(top: 15, left: 20),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(kDefaultPadding),
            ),
            child: Center(
              child: Text(
                subjectName,
                style: const TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400,
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(topicName,
                  style: const TextStyle(
                      color: kTextBlackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0)),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Assign Date :",
                  style: TextStyle(
                    color: kTextLightColor,
                    fontWeight: FontWeight.bold,
                  )),
              Text(assignDate,
                  style: const TextStyle(
                    color: kTextBlackColor,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Last Date :",
                  style: TextStyle(
                    color: kTextLightColor,
                    fontWeight: FontWeight.bold,
                  )),
              Text(lastDate,
                  style: const TextStyle(
                    color: kTextBlackColor,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Status :",
                  style: TextStyle(
                    color: kTextLightColor,
                    fontWeight: FontWeight.bold,
                  )),
              Text(status,
                  style: const TextStyle(
                    color: kTextBlackColor,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          kHalfSizedbOX,
          if (status == "Pending")
            DefaultButton(
              onPressed: () {},
              title: "To be Submitted",
              iconData: Icons.arrow_forward_ios,
            ),
        ],
      ),
    );
  }
}
