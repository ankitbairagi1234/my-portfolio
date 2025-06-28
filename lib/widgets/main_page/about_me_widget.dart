import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';
import 'package:flutter_developer_portfolio/widgets/sub_header.dart';

import '../../utils/common_functions.dart';
import '../profile_image_widget.dart';
import '../tech_stack_item.dart';

class AboutMeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SubHeader(
            number: '01.',
            heading: 'About me',
          ),
          SizedBox(
            height: CommonFunction.isApp(context) ? 16 : 32,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (CommonFunction.isApp(context)) ...[
                      Center(child: ProfileImageWidget()),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                    Text(
                      "I'm a Flutter Developer with 4 years of experience in building scalable, high-performance Android and iOS apps. I've completed 10+ production-ready mobile and web projects across domains including e-commerce and SaaS. \nCurrently, I work as a Software Engineer at Repro India Pvt. Ltd., where I contribute to full-cycle app development using modern architecture and tooling.",
                      style: TextStyle(
                        fontSize: CommonFunction.isApp(context) ? 18 : 16,
                        color: Constants.slate,
                        fontFamily: 'FiraSans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'I follow MVVM architecture, implement CI/CD pipelines for automated deployment, and use state management tools like Riverpod and GetX to ensure performance and scalability. I also enjoy contributing to side projects to continuously sharpen my mobile skills.',
                      style: TextStyle(
                        fontSize: CommonFunction.isApp(context) ? 18 : 16,
                        color: Constants.slate,
                        fontFamily: 'FiraSans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Outside of coding, I enjoy creating music beats and travelling solo to explore new places :)',
                      style: TextStyle(
                        fontSize: CommonFunction.isApp(context) ? 18 : 16,
                        color: Constants.slate,
                        fontFamily: 'FiraSans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 16),
                    Flexible(
                      child: Text(
                        "Technologies I frequently work with: Flutter, Dart, Firebase, REST APIs, Hive, Riverpod, GetX, MVVM, GitHub Actions, Bitbucket Pipelines.",
                        style: TextStyle(
                          fontSize: CommonFunction.isApp(context) ? 18 : 16,
                          color: Constants.slate,
                          fontFamily: 'FiraSans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 16,
                    ),
                    Flexible(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,

                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TechStackItem(text: 'Flutter'),
                                SizedBox(
                                  height: CommonFunction.isApp(context) ? 8 : 12,
                                ),
                                TechStackItem(text: 'Flutter Web'),
                                SizedBox(
                                  height: CommonFunction.isApp(context) ? 8 : 12,
                                ),
                                TechStackItem(text: 'Dart'),
                                SizedBox(
                                  height: CommonFunction.isApp(context) ? 8 : 12,
                                ),
                                TechStackItem(text: 'Riverpod / GetX'),
                              ],
                            ),
                            SizedBox(
                              width: 32,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TechStackItem(text: 'Firebase'),
                                SizedBox(
                                  height: CommonFunction.isApp(context) ? 8 : 12,
                                ),
                                TechStackItem(text: 'Hive / SharedPreferences'),
                                SizedBox(
                                  height: CommonFunction.isApp(context) ? 8 : 12,
                                ),
                                TechStackItem(text: 'MVVM + Clean Architecture'),
                                SizedBox(
                                  height: CommonFunction.isApp(context) ? 8 : 12,
                                ),
                                TechStackItem(text: 'CI/CD (GitHub Actions, Bitbucket)'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              !CommonFunction.isApp(context)
                  ? Flexible(
                      flex: 4,
                      child: ProfileImageWidget(),
                    )
                  : Container()
            ],
          ),
        ],
      ),
    );
  }
}
