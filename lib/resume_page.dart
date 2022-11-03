import 'package:flutter/material.dart';
import 'package:mobile_resume/pages/other_resume.dart';
import 'pages/mobile_resume.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      return screenWidth > 620
          ? const OtherResumePage()
          : const MobileResumePage();
    });
  }
}
