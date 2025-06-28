import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/widgets/project_showcase.dart';
import 'package:flutter_developer_portfolio/widgets/sub_header.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SubHeader(
            number: '03.',
            heading: 'Some Things I’ve Built',
          ),
          SizedBox(
            height: 32,
          ),

          Expanded(
            child: ProjectShowcase(
              title: 'Urgent Taxis',
              subTitle:
                  'This app offers taxi services, allowing users to select pickup and drop-off locations, find available vehicles, and book rides. Users can track ride status, view booking details, and complete the ride by entering an OTP.',
              playStoreUrl: "https://play.google.com/store/apps/details?id=com.urgenttaxis.user&pcampaignid=web_share",
            ),
          ),
        ],
      ),
    );
  }
}
