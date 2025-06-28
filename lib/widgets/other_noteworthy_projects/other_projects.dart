import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

import 'other_project_item.dart';

class OtherProjects extends StatefulWidget {
  @override
  _OtherProjectsState createState() => _OtherProjectsState();
}

class _OtherProjectsState extends State<OtherProjects> {
  List<String>? _titleOtherProject;

  List<String>? _subTitleOtherProject;

  List<String>? _link;

  @override
  void initState() {
    super.initState();

    /// todo generic
    _titleOtherProject = [
      'CustomContainer',
      'Noukri Junction',
      'Kolaz Photography App',
      'Social Media App',
      'My CV',
      'AWS Certification',
    ];
    _subTitleOtherProject = [
      'CustomContainer – A Flutter package that provides a customizable container widget with features like onTap handling, styling, and dynamic child management.',
      'Noukri Junction – A job search app connecting candidates and recruiters. Candidates can apply for jobs while recruiters can post openings and manage applications.',
      'Kolaz Photography App – A platform for photographers to update their availability and offer various photography services for booking, including event shoots, portraits, and more.',
      'Social Media App – A complete social platform where users can post updates, add friends, like, comment, and chat with real-time messaging support.',
      'My CV – A detailed portfolio showcasing my professional experience, Flutter projects, technical skills, and achievements in mobile app development.',
      'AWS Certification – Successfully achieved AWS Certified Developer – Associate, validating expertise in cloud-based app development, deployment, and AWS services integration.',
    ];
    _link = [
      'https://pub.dev/packages/tap_container',
      'https://github.com/ankitbairagi1234/Noukri_junction',
      'https://github.com/ankitbairagi1234/Kolaz_book_photography',
      'https://github.com/ankitbairagi1234/socialified_social',
      'https://lavender-yettie-53.tiiny.site',
      'https://imagekit.io/public/share/ankitbairagi/a7665f3c489e24925571c83dc57245cbe93e290e21f9175862effb8aa2310c01119305b62c199768803cc3d3bdc799cbe30d2b72698160311d7d855b525e37909fa66fda1eafdda6bdb6216fb7e02f72',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Other Noteworthy Projects',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Constants.lightestSlate,
            fontFamily: 'FiraSans',
          ),
        ),
        SizedBox(
          height: 32,
        ),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children: [
              Center(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    OtherNoteworthyProjectItem(
                      title: _titleOtherProject?[0] ?? "",
                      description: _subTitleOtherProject?[0] ?? '',
                      url: _link?[0] ??'',
                    ),
                    OtherNoteworthyProjectItem(
                      title: _titleOtherProject?[1] ?? "",
                      description: _subTitleOtherProject?[1] ??'',
                      url: _link?[1] ?? '',
                    ),
                    OtherNoteworthyProjectItem(
                      title: _titleOtherProject?[2] ??'',
                      description: _subTitleOtherProject?[2] ?? "",
                      url: _link?[2] ?? '',
                    ),
                    OtherNoteworthyProjectItem(
                      title: _titleOtherProject?[3] ?? '',
                      description: _subTitleOtherProject?[3] ?? '',
                      url: _link?[3] ??'',
                    ),
                    OtherNoteworthyProjectItem(
                      title: _titleOtherProject?[4] ?? '',
                      description: _subTitleOtherProject?[4] ?? '',
                      url: _link?[4] ??'',
                    ),
                    OtherNoteworthyProjectItem(
                      title: _titleOtherProject?[5] ?? '',
                      description: _subTitleOtherProject?[5] ?? '',
                      url: _link?[5] ??'',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CommonFunction.isApp(context)
            ? Padding(
                padding: const EdgeInsets.only(top: 16),
                child: InkWell(
                  onTap: () {
                    CommonFunction.openMail();
                    },
                  child: Card(
                    color: Constants.slate,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Let's connect via Email",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Constants.white,
                                fontFamily: 'FiraSans',
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.open_in_new,
                              size: 20,
                              color: Constants.green,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
