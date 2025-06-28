import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';
import 'package:flutter_developer_portfolio/widgets/company_tile.dart';
import 'package:flutter_developer_portfolio/widgets/sub_header.dart';

import '../../utils/constants.dart';

class Experience extends StatefulWidget {
  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  List<String>? _companyList;
  List<bool> _companySelected = <bool>[];
  int? _selectedIndex;

  @override
  void initState() {
    super.initState();

    _companyList = [
      'Cubixsys Technologies',
      'Volobot Advance System',
      'Repro India Pvt. Ltd.',
    ];

    _selectedIndex = _companyList!.length - 1;
    for (int i = 0; i < _companyList!.length - 1; i++) {
      _companySelected.add(false);
    }
    _companySelected.add(true);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (CommonFunction.isApp(context)) {
      _selectedIndex = 0;
      _companyList = _companyList?.reversed.toList();
      _companySelected = _companySelected.reversed.toList();
    }
  }

  Widget _buildExperienceDetails(int index) {
    switch (index) {
      case 0:
        return CompanyJobInfo(
          companyName: 'Repro India Pvt. Ltd.',
          duration: 'Aug 2024 – Present',
          position: 'Flutter Developer D2C',
          responsibilities: [
            'Developed scalable mobile apps for D2C e-commerce platform.',
            'Integrated OTP, Express Delivery, Cart, and Secure Checkout.',
            'Used Riverpod for modular state management.',
            'Implemented REST APIs for product listing, orders, payments.',
            'Optimized performance and reduced loading by 30%.',
            'Ensured cross-platform compatibility with responsive UI/UX.',
            'Worked with QA for testing and release cycles.',
            'Contributed to CI/CD with GitHub Actions and Bitbucket.',
          ],
        );
      case 1:
        return CompanyJobInfo(
          companyName: 'Volobot Advance System',
          duration: 'Jan 2024 – Aug 2024',
          position: 'Mobile Application Developer',
          responsibilities: [
            'Developed and maintained cross-platform mobile apps using Flutter.',
            'Built real-time data modules, push notifications, and responsive UIs.',
            'Integrated Firebase Auth, REST APIs, and local storage.',
            'Focused on pixel-perfect UI, custom widgets, and performance.',
            'Resolved production-level bugs and ensured app stability.',
            'Published apps on Google Play Store and Apple App Store.',
          ],
        );
      case 2:
      default:
      return CompanyJobInfo(
        companyName: 'Cubixsys Technologies',
        duration: 'Jun 2022 – Jan 2024',
        position: 'Flutter Developer',
        responsibilities: [
          'Developed 5+ full-cycle cross-platform mobile apps using Flutter & Firebase.',
          'Built e-commerce app clones, live processing modules, and dynamic UIs.',
          'Implemented Firebase-based CRUD, real-time updates, and authentication.',
          'Designed reusable components and used MVVM for maintainability.',
          'Handled Play Store publishing, versioning, and rollouts.',
          'Ensured high performance with responsive design on Android & iOS.',
          'Collaborated with clients and teams for timely deliveries.',
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(top: CommonFunction.isApp(context) ? 64 : 0),
            child: SubHeader(
              number: '02.',
              heading: 'Experience',
            ),
          ),
          SizedBox(height: 32),
          CommonFunction.isApp(context)
              ? SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 64,
                  child: ListView.builder(
                    itemCount: _companyList?.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    reverse: false,
                    itemBuilder: (context, index) {
                      return InkWell(
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                            for (int i = 0; i < _companyList!.length; i++) {
                              _companySelected[i] = (i == index);
                            }
                          });
                        },
                        child: Center(
                          child: CompanyTile(
                            val: _companyList?[index],
                            selected: _companySelected[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 12),
                  child: _buildExperienceDetails(_selectedIndex!),
                ),
              ],
            ),
          )
              : Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: ListView.builder(
                  itemCount: _companyList?.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  reverse: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                          for (int i = 0; i < _companyList!.length; i++) {
                            _companySelected[i] = (i == index);
                          }
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4) + EdgeInsets.only(right: 64),
                        child: CompanyTile(
                          val: _companyList?[index],
                          selected: _companySelected[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: _buildExperienceDetails(_companyList!.length - 1 - _selectedIndex!),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CompanyJobInfo extends StatelessWidget {
  final String companyName;
  final String duration;
  final String position;
  final List<String> responsibilities;

  const CompanyJobInfo({
    required this.companyName,
    required this.duration,
    required this.position,
    required this.responsibilities,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$position at $companyName', style: TextStyle(
          fontSize: CommonFunction.isApp(context) ? 18 : 16,
          color: Constants.slate,
          fontFamily: 'FiraSans',
          fontWeight: FontWeight.w400,
        )),
        Text(duration, style: TextStyle(fontSize: 14, color: Colors.grey)),
        SizedBox(height: 8),
        for (var item in responsibilities)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: Row(
              children: [
                Icon(Icons.arrow_right, size: 16,color:Constants.slate,),
                SizedBox(width: 4),
                Expanded(child: Text(item,style: TextStyle(
                  fontSize: CommonFunction.isApp(context) ? 18 : 16,
                  color: Constants.slate,
                  fontFamily: 'FiraSans',
                  fontWeight: FontWeight.w400,
                ),)),
              ],
            ),
          ),
      ],
    );
  }
}