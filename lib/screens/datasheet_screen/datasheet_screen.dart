import 'package:flutter/material.dart';
import 'package:kid_smart_learning/constants/constants.dart';
import 'package:kid_smart_learning/screens/datasheet_screen/data/datasheet_data.dart';

class DataSheetScreen extends StatelessWidget {
  const DataSheetScreen({super.key});

  static String routeName = '/data_sheet_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DataSheet"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding),
                topRight: Radius.circular(kDefaultPadding),
              ),
            ),
            child: ListView.builder(
                itemCount: dateSheet.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height / 8,
                    margin: const EdgeInsets.only(
                        left: kDefaultPadding / 2, right: kDefaultPadding / 2),
                    padding: EdgeInsets.all(kDefaultPadding / 2),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: kDefaultPadding,
                            child: Divider(
                              thickness: 1.0,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    dateSheet[index].date.toString(),
                                    style: const TextStyle(
                                        color: kTextBlackColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  Text(
                                    dateSheet[index].monthName,
                                    style: const TextStyle(
                                        color: kTextBlackColor,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 13.0),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    dateSheet[index].subjectName,
                                    style: const TextStyle(
                                        color: kTextBlackColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0),
                                  ),
                                  Text(
                                    dateSheet[index].dayName,
                                    style: const TextStyle(
                                        color: kTextBlackColor,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 13.0),
                                  ),
                                ],
                              ),
                              Text(
                                dateSheet[index].time,
                                style: const TextStyle(
                                    color: kTextBlackColor,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13.0),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: kDefaultPadding,
                            child: Divider(
                              thickness: 1.0,
                            ),
                          ),
                        ]),
                  );
                }),
          ))
        ],
      ),
    );
  }
}
