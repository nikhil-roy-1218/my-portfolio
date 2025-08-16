import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/nav_items.dart';

class DraweMobile extends StatelessWidget {
  const DraweMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomCLors.scaffolBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < navICons.length; i++)
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 45,
                vertical: 15.0,
              ),
              titleTextStyle: TextStyle(
                color: CustomCLors.whitePrimary,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              onTap: () {},
              leading: Icon(navICons[i]),
              title: Text(navTiles[i]),
              horizontalTitleGap: 75,
            ),
        ],
      ),
    );
  }
}
