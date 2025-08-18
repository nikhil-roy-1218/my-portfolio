import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      height: screenSize.height / 2,
      constraints: BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                FittedBox(
                  child: Text(
                    "Hye,\nI'am Nikhil Prem ,\nA Flutter developer",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                      color: CustomCLors.whitePrimary,
                      height: 1.5,
                    ),
                  ),
                ),

                SizedBox(height: 15),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 207, 166, 40),
                      foregroundColor: CustomCLors.whitePrimary,
                    ),

                    child: Text(
                      "Get in Touch",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 32),
          Expanded(child: Image.asset('assets/profile image.jpg')),
        ],
      ),
    );
  }
}
