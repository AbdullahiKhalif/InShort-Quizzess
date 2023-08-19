import 'package:flutter/material.dart';
import 'package:inshor_quiz/constant.dart';

import '../data/prog_ques_lilst.dart';

class ProgrammingScreen extends StatefulWidget {
  const ProgrammingScreen({super.key});

  @override
  State<ProgrammingScreen> createState() => _ProgrammingScreenState();
}

class _ProgrammingScreenState extends State<ProgrammingScreen> {
  int index = 0;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: PageView.builder(
              itemCount: questions.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 10.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kTextColor,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Level:',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: kTextColor,
                            ),
                          ),
                        ),
                        // SizedBox(width: 250.0),
                        Text(
                          '${index + 1}/${questions.length}',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: kTextColor,
                          ),
                        ),
                        Text(
                          'Level:',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: kWhiteColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: SelectableText(
                        questions[index].questionText!,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: kTextColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    for (int i = 0;
                        i < questions[index].questionAnswers!.length;
                        i++)
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: 18.0),
                        child: MaterialButton(
                          shape: StadiumBorder(),
                          color: isPressed
                              ? questions[index]
                                      .questionAnswers!
                                      .entries
                                      .toList()[i]
                                      .value
                                  ? kTureColor
                                  : kWrongColor
                              : kTextColor,
                          padding: EdgeInsets.symmetric(vertical: 18.0),
                          onPressed: () {
                            setState(() {
                              isPressed = true;

                              /// btnColor = kTureColor as Colors;
                            });
                          },
                          child: Text(
                            questions[index].questionAnswers!.keys.toList()[i],
                            style:
                                TextStyle(fontSize: 16.0, color: kWhiteColor),
                          ),
                        ),
                      ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          //padding: EdgeInsets.all(5.0),
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 5.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: kSecondColor,
                          ),
                          child: InkWell(
                            onTap: isPressed
                                ? () {
                                    print('Yes. is Pressed');
                                  }
                                : null,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_right_alt,
                                  size: 32.0,
                                  color: kWhiteColor,
                                ),
                                Text(
                                  'Next',
                                  style: TextStyle(
                                      fontSize: 20.0, color: kWhiteColor),
                                ),
                                SizedBox(
                                  width: 1.0,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SelectableText(
                      '©ENG-KHALIFA 2023',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: kFooterText,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
