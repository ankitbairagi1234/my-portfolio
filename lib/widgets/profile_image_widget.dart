import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';

class ProfileImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ClipOval(
        child: Container(
          width: CommonFunction.isApp(context) ? 200 : 250, // Adjust size as needed
          height: CommonFunction.isApp(context) ? 200 : 250,
          color: Colors.grey.shade200, // Optional background
          child: Image.asset(
            'asset/profile_4.png', // Ensure path matches pubspec.yaml
            fit: BoxFit.contain,     // Fill the oval without distortion
          ),
        ),
      ),
    );
  }
}
