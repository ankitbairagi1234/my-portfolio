import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';
import 'package:flutter_developer_portfolio/widgets/main_page/about_me_widget.dart';
import 'package:flutter_developer_portfolio/widgets/main_page/experience.dart';
import 'package:flutter_developer_portfolio/widgets/main_page/introduction.dart';
import 'package:flutter_developer_portfolio/widgets/main_page/projects.dart';
import 'package:flutter_developer_portfolio/widgets/project_showcase.dart';

import '../other_noteworthy_projects/other_projects.dart';

class AppHomeBody extends StatelessWidget {
  final PageController? pageController;

  AppHomeBody({
    this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller: pageController,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 4,
          ),
          child: Introduction(),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: AboutMeWidget(),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Experience(),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
            top: 48,
            bottom: 48,
          ),
          child: Projects(),
        ),

        /// todo generic
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget(
              'Bookscape: Online Bookstore',
              'A Flutter-based online bookstore with over 1M titles from 700+ publishers. Users can search, view, and purchase books with features like wishlist, cart, secure checkout, and OTP-based order verification. Integrated REST APIs and used Riverpod for state management.',
              appUrl: "https://play.google.com/store/apps/details?id=com.bookscape&pcampaignid=web_share"
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget(
            'Intellect',
            'Intellect provides you platform to prepare for UPSC.',
            appUrl: 'https://play.google.com/store/apps/details?id=com.intellectias.gradeupProto',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget(
            'DR Apps',
            "🩺 Doctor App – Pharma & Doctor Platform\n A dual-role Flutter app for Doctors and Pharma professionals. Doctors can register, share clinic details, post events/webinars, and view pharma requests. Pharma users can upload generic brands, share disease awareness content, and engage with doctors based on their specialties.",
            appUrl: 'https://play.google.com/store/apps/details?id=com.dr.applications&pcampaignid=web_share',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget(
              'Eatoz Food Delivery',
              "🍽️ Eatoz – Food Ordering App\nEatoz is a food delivery app that lets users browse restaurants, explore menus, and order food to their preferred location with ease.",
              appUrl: "https://play.google.com/store/apps/details?id=com.eatozfood_user&pcampaignid=web_share"
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
                top: 48,
                bottom: 48,
              ) +
              (CommonFunction.isApp(context) ? EdgeInsets.symmetric(horizontal: 16) : EdgeInsets.zero),
          child: OtherProjects(),
        ),
      ],
    );
  }

  Widget _showcaseWidget(
    String title,
    String subtitle, {
    String? appUrl,
    String? github,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: ProjectShowcase(
        title: title,
        subTitle: subtitle,
        playStoreUrl: appUrl,
        githubUrl: github,
      ),
    );
  }
}
