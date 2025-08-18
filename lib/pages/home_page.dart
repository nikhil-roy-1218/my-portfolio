import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/size.dart';

import 'package:portfolio/widgets/drawe_mobile.dart';
import 'package:portfolio/widgets/header_desktop.dart';

import 'package:portfolio/widgets/header_mobile.dart';
import 'package:portfolio/widgets/main_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // layout builder use for set screen size for web and mobile
      builder: (context, constraints) {
        // screen size store in constraints
        return Scaffold(
          endDrawer: constraints.maxWidth >= widthSize ? null : DraweMobile(),
          backgroundColor: CustomCLors.scaffolBg,
          body: ListView(
            // listView  is use for  scroll our page in vertical & horizontal direction
            scrollDirection: Axis.vertical,
            children: [
              // Header
              if (constraints.maxWidth >=
                  widthSize) // Logic for mannage screen size
                HeaderDesktop()
              else
                Builder(
                  // Builder is used for get data form scaffold menu Icon
                  builder: (context) => HeaderMobile(
                    onLogoTap: () {
                      print("LOGO CLick");
                    },

                    onMenuTap: () {
                      Scaffold.of(
                        context,
                      ).openEndDrawer(); // this method use for clickable menu icon in drawer
                    },
                  ),
                ),
              // Main Section => Body
              MainSection(),

              // Skill
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.red,
              ),

              // Project Section
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.yellow.shade400,
              ),

              // COntact Section
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.green,
              ),

              // Footer section
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
            ],
          ),
        );
      },
    );
  }
}
