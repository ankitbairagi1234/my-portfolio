import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';
import 'package:flutter_developer_portfolio/widgets/project_showcase.dart';
import 'package:flutter_developer_portfolio/widgets/social_handles/social_handles.dart';

import '../bottom_line_widget.dart';
import '../email_widget.dart';
import '../main_page/about_me_widget.dart';
import '../main_page/experience.dart';
import '../main_page/introduction.dart';
import '../main_page/projects.dart';
import '../other_noteworthy_projects/other_projects.dart';

class WebHomeBody extends StatelessWidget {
  final PageController? pageController;

  WebHomeBody({
    this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: RawScrollbar(
          controller: pageController,
          thickness: 8,
          interactive: true,
          thumbColor: Constants.green,
          radius: Radius.circular(8),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SocialHandles(),
                    SizedBox(
                      height: 16,
                    ),
                    BottomLineWidget(),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 128),
                    child: PageView(
                      scrollDirection: Axis.vertical,
                      controller: pageController,
                      children: [
                        Introduction(),
                        AboutMeWidget(),
                        Experience(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Projects(),
                        ),

                        /// todo pass this through constants
                        _showcaseWidget(
                          'Bookscape: Online Bookstore',
                          'A Flutter-based online bookstore with over 1M titles from 700+ publishers. Users can search, view, and purchase books with features like wishlist, cart, secure checkout, and OTP-based order verification. Integrated REST APIs and used Riverpod for state management.',
                          appUrl: "https://play.google.com/store/apps/details?id=com.bookscape&pcampaignid=web_share"
                        ),
                        _showcaseWidget(
                          'Intellect',
                          'Intellect provides you platform to prepare for UPSC.',
                        ),
                        _showcaseWidget(
                          'DR Apps',
                          "🩺 Doctor App – Pharma & Doctor Platform\n A dual-role Flutter app for Doctors and Pharma professionals. Doctors can register, share clinic details, post events/webinars, and view pharma requests. Pharma users can upload generic brands, share disease awareness content, and engage with doctors based on their specialties.",
                          appUrl: 'https://play.google.com/store/apps/details?id=com.dr.applications&pcampaignid=web_share',
                        ),
                        _showcaseWidget(
                          'Eatoz Food Delivery',
                          "🍽️ Eatoz – Food Ordering App\nEatoz is a food delivery app that lets users browse restaurants, explore menus, and order food to their preferred location with ease.",
                          appUrl: "https://play.google.com/store/apps/details?id=com.eatozfood_user&pcampaignid=web_share"
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 48),
                          child: OtherProjects(),
                        ),
                      ],
                    ),
                  ),
                ),
                EmailWidget(),
              ],
            ),
          ),
        ),
      ),
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
