import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../constants/text_string.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final IconData? iconData;
  const DefaultButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          margin: const EdgeInsets.only(
              left: kDefaultPadding, right: kDefaultPadding),
          padding: const EdgeInsets.only(
            right: kDefaultPadding,
          ),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kDefaultPadding),
            gradient: const LinearGradient(
              colors: [kSecondaryColor, kPrimaryColor],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(0.7, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: kTextWhiteColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0),
              ),
              Spacer(),
              Icon(
                iconData,
                color: kTextWhiteColor,
                size: 30,
              ),
            ],
          )),
    );
  }
}
