import 'package:flutter/material.dart';
import 'package:inshor_quiz/categories/text/programming_txt.dart';
import 'package:inshor_quiz/screens/programming.dart';

import '../constant.dart';

class ProgrammingTutorial extends StatelessWidget {
  const ProgrammingTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteColor,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
          backgroundColor: kTextColor,
          title: SelectableText(
            'Read Tutorial',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: kWhiteColor,
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kFooterText,
                  width: 1.0,
                ),
              ),
              child: ReadProggmingText(),
            ),
            SizedBox(
              height: 60.0,
            )
          ],
        ),
        floatingActionButton: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 37.0, right: 3.0),
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: kTextColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: InkWell(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProgrammingScreen()))
                  },
                  child: Text(
                    'Let\'s Start',
                    style: TextStyle(
                      color: kWhiteColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
