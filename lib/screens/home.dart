import 'package:flutter/material.dart';
import 'package:inshor_quiz/constant.dart';
import 'package:inshor_quiz/screens/category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 120.0,
            ),
            Expanded(
              flex: 6,
              child: Container(
                height: 550.0,
                width: 550.0,
                child: Center(
                  child: Image.asset('images/bg-home.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'LEAR NEW SKILLS',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: kTextColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                child: Text(
                  'Master Skills with Progressive Quizzes from Basic to Advanced',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: kTextColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // SizedBox(
            //   height: 10.0,
            // ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                child: Text(
                  '©ENG-KHALIFA 2023',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: kFooterText,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 25.0),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kTextColor,
        onPressed: () => {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CategoryScreen())),
        },
        child: Icon(
          Icons.arrow_forward_ios,
          size: 36,
        ),
      ),
    );
  }
}
