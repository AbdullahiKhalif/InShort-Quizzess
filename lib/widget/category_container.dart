// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../constant.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({
    required this.img,
    required this.title,
    required this.numQuestion,
    required this.url,
    super.key,
  });

  String? img;
  String? title;
  int? numQuestion;
  dynamic url;

  void changeScreen() {
    print('dah');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      padding: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: kTextColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Expanded(
        child: InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => url)),
          child: ListTile(
            leading: Container(
              height: 65.0,
              width: 65.0,
              child: Image.asset('images/$img.png'),
            ),
            title: Text(
              '$title',
              style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Questions: $numQuestion',
              style: TextStyle(color: kWhiteColor),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 26,
              color: kWhiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
