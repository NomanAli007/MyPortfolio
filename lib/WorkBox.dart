import 'package:flutter/material.dart';
import 'package:web_d/WorkCustomData.dart';

class WorkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WorkCustomData(
          title: "Flutter Developer",
          subTitle:
          "Techtronix Corp. Pvt Ltd, Pakistan",
          duration: "May 2024 - Present",
        ),
        WorkCustomData(
          title: "Flutter Developer",
          subTitle:
          "Invovision Technologies, Pakistan",
          duration: "April 2023 - April 2024",
        ),
        WorkCustomData(
          title: "Flutter Developer",
          subTitle:
          "Xyroon Technologies, Pakistan",
          duration: "July 2022 - March 2023",
        ),
        WorkCustomData(
          title: "Research Associate",
          subTitle:
          "Machine Intellect Analytica",
          duration: "Feb 2019 - March 2021",
        ),
        WorkCustomData(
          title: "BS in Computer Science",
          subTitle:
          "Federal Urdu University (FUUAST)",
          duration: "2017 - 2022",
        ),
      ],
    );
  }
}
