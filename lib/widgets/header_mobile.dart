import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({
    super.key,
    required this.onLogoTap,
    required this.onMenuTap,
  });
  final VoidCallback onLogoTap;
  final VoidCallback onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      // mobile menu bar
      height: 50.0,
      margin: EdgeInsets.fromLTRB(30, 10, 10, 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.transparent, CustomCLors.bgLight1],
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          SiteLogo(onTap: onLogoTap),
          Spacer(),
          IconButton(onPressed: onMenuTap, icon: Icon(Icons.menu)),
          SizedBox(width: 15),
        ],
      ),
    );
  }
}
