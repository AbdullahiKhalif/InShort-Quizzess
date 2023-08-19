import 'package:flutter/material.dart';
import 'package:inshor_quiz/categories/programming_tutorial.dart';
import 'package:inshor_quiz/constant.dart';
import 'package:inshor_quiz/widget/category_container.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: kTextColor,
        title: SelectableText(
          'Categories',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: kWhiteColor,
          ),
        ),
      ),
      body: ListView(
        children: [
          CategoryWidget(
            img: 'prog',
            title: 'Programming',
            numQuestion: 30,
            url: ProgrammingTutorial(),
          ),
          CategoryWidget(
            img: 'web',
            title: 'Web Development',
            numQuestion: 20,
            url: 'clicked Web',
          ),
          CategoryWidget(
            img: 'mob',
            title: 'Mobile Development',
            numQuestion: 10,
            url: 'clicked Mobile',
          ),
          CategoryWidget(
            img: 'game',
            title: 'Game Development',
            numQuestion: 30,
            url: 'clicked Game',
          ),
          CategoryWidget(
            img: 'digital',
            title: 'Digital Marketing',
            numQuestion: 15,
            url: 'clicked Digital Marketing',
          ),
          SelectableText(
            '©ENG-KHALIFA 2023',
            style: TextStyle(
              fontSize: 15.0,
              color: kFooterText,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
