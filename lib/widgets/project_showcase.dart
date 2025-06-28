import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

import '../utils/common_functions.dart';

class ProjectShowcase extends StatefulWidget {
  final String? title;
  final String? subTitle;
  final String? githubUrl;
  final String? playStoreUrl;

  ProjectShowcase({
    this.title,
    this.subTitle,
    this.githubUrl,
    this.playStoreUrl,
  });

  @override
  _ProjectShowcaseState createState() => _ProjectShowcaseState();
}

class _ProjectShowcaseState extends State<ProjectShowcase> {
  List<Widget>? _showcaseList;
  String? _playStore;

  @override
  void initState() {
    /// todo generic
    _playStore = 'playstore_dark';
    if (widget.title == 'Bookscape: Online Bookstore') {
      _showcaseList = [
        _placeholder('b1'),
        _placeholder('b2'),
        _placeholder('b3'),
        _placeholder('b4'),
        _placeholder('b5'),
        _placeholder('b3'),
        _placeholder('b4'),
        _placeholder('b5'),
      ];
    } else if (widget.title == 'Urgent Taxis') {
      _showcaseList = [
        _placeholder('taxi1'),
        _placeholder('taxi2'),
        _placeholder('taxi3'),
        _placeholder('taxi4'),
        _placeholder('taxi4'),
      ];
    } else if (widget.title == 'Intellect') {
      _showcaseList = [
        _placeholder('intellect_1'),
        _placeholder('intellect_2'),
        _placeholder('intellect_3'),
        _placeholder('intellect_4'),
        _placeholder('intellect_5'),
      ];
    } else if (widget.title == 'Intellect Dashboard') {
      _showcaseList = [
        _placeholder('intellect_d_1'),
        _placeholder('intellect_d_2'),
        _placeholder('intellect_d_3'),
      ];
    } else if (widget.title == 'DR Apps') {
      _showcaseList = [
        _placeholder('d1'),
        _placeholder('d2'),
        _placeholder('d3'),
        _placeholder('d4'),
        _placeholder('d5'),
      ];
    } else if (widget.title == 'Eatoz Food Delivery') {
      _showcaseList = [
        _placeholder('c1'),
        _placeholder('c2'),
        _placeholder('c3'),
        _placeholder('c4'),
        _placeholder('c5'),
      ];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Text(
                  widget.title?.toUpperCase() ?? "",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Constants.lightestSlate,
                    fontFamily: 'FiraSans',
                  ),
                ),
                SizedBox(
                  width: widget.playStoreUrl != null ? 16 : 0,
                ),
                widget.playStoreUrl != null
                    ? InkWell(
                        onTap: () {
                          CommonFunction.openFromUrl(widget.playStoreUrl ?? "");
                        },
                        child: Card(
                          shadowColor: Constants.green,
                          color: Constants.navy,
                          elevation: 5,
                          child: Image.asset(
                            'asset/google_play.png',
                            fit: BoxFit.fill,
                            width: 130,
                            height: 36,
                          ),
                        ),
                      )
                    : Container(),
                widget.githubUrl != null
                    ? Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: InkWell(
                          onTap: () {
                            CommonFunction.openFromUrl(widget.githubUrl ??'');
                          },
                          onHover: (value) {
                            if (value) {
                              setState(() {
                                _playStore = 'github_light';
                              });
                            } else {
                              setState(() {
                                _playStore = 'github_dark';
                              });
                            }
                          },
                          child: Image.asset(
                            'asset/$_playStore.png',
                            width: 16,
                            height: 16,
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            widget.subTitle ??'',
            style: TextStyle(
              fontSize: CommonFunction.isApp(context) ? 18 : 16,
              color: Constants.green,
              fontFamily: 'FiraSans',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: _showcaseList ??[],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _placeholder(String image) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: widget.title == 'Intellect Dashboard' ? 16 : 0,
      ),
      child: Image.asset(
        'asset/$image.png',
      ),
    );
  }
}
