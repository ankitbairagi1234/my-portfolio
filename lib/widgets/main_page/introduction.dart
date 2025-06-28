import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// todo generic
          Text(
            'Hi, my name is',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: CommonFunction.isApp(context) ? 24 : 16,
              color: Constants.green,
              fontFamily: 'FiraSans',
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            'Ankit Bairagi.',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: CommonFunction.isApp(context) ? 48 : 64,
              color: Constants.white,
              fontFamily: 'FiraSans',
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'I build mobile apps.',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontFamily: 'FiraSans',
              fontSize: CommonFunction.isApp(context) ? 48 : 64,
              color: Constants.lightSlate,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            "I’m a Flutter Developer from India with over 4 years of professional experience building high-performance Android & iOS applications. \nCurrently focused on crafting clean, scalable, and cross-platform mobile solutions with Flutter.",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              fontFamily: 'FiraSans',
              color: Constants.slate,
            ),
          ),

        ],
      ),
    );
  }
}
