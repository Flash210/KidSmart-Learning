import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kid_smart_learning/constants/image_string.dart';

import '../../constants/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static String routeName = '/profile_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Profile"), actions: [
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.only(right: kDefaultPadding / 2),
            child: const Row(
              children: [
                Icon(Icons.report_gmailerrorred_outlined),
                kHalfSizedbOX,
                Text("Report"),
              ],
            ),
          ),
        )
      ]),
      body: Container(
        color: kOtherColor,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150.0,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(kDefaultPadding * 2),
                  bottomRight: Radius.circular(kDefaultPadding * 2),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage(kHomeScreenImage),
                  ),
                  kHalfWidhSizedBox,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(kWelcomeStudent2,
                          style: Theme.of(context).textTheme.titleMedium),
                      Text(kStudentClass,
                          style: Theme.of(context).textTheme.titleSmall),
                    ],
                  ),
                ],
              ),
            ),
            kDefaultSizedBox,
            Container(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding / 4,
                    right: kDefaultPadding / 4,
                    top: kDefaultPadding / 2),
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Registration",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    color: kTextLightColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.0),
                          ),
                          kHalfSizedbOX,
                          Text(
                            "123456",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    color: kTextBlackColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.0),
                          ),
                          kHalfSizedbOX,
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3,
                            child: const Divider(
                              thickness: 1.0,
                            ),
                          ),
                        ]),
                    Icon(
                      Icons.lock,
                      size: 20,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
