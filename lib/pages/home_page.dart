import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/widgets/header_desktop.dart';
import 'package:portfolio/widgets/site_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomCLors.scaffolBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // Main
          // HeaderDesktop(),
          Container(
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
                SiteLogo(onTap: () {}),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
              ],
            ),
          ),

          // Skill
          Container(height: 500, width: double.maxFinite, color: Colors.red),

          // Project Section
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.yellow.shade400,
          ),

          // COntact Section
          Container(height: 500, width: double.maxFinite, color: Colors.green),

          // Footer section
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
