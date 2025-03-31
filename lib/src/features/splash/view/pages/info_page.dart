import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ishla/src/features/splash/view/widgets/info_page_text_widget.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          SvgPicture.asset("assets/icons/info_icon.svg"),
          50.verticalSpace,
          DreamJobCard(),
          50.verticalSpace,
        ],
      ),
    );
  }
}
