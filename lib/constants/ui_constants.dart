import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter_clone/constants/constants.dart';
import 'package:twitter_clone/theme/theme.dart';

class UIConstants {
  static AppBar appBar() {
    return AppBar(
      title: SvgPicture.asset(
        AssetsConstants.twitterLogo,
        height: 30,
        colorFilter: const ColorFilter.mode(
          Palette.blueColor,
          BlendMode.srcIn,
        ),
      ),
      centerTitle: true,
    );
  }
}
