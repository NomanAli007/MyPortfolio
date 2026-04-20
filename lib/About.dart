import 'package:flutter/material.dart';
import 'package:web_d/MainTitle.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width - 100,
      child: Row(
        children: [
          //About me
          Container(
            height: size.height * 0.9,
            width: size.width * 0.5,
            child: Column(
              children: [
                //About me title
                MainTitle(
                  number: "",
                  text: "About Me",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                //About me content
                Container(
                  width: size.width * 0.45,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: size.width * 0.40,
                            child: Text(
                              "Hello! I'm Noman Ali, a Flutter Developer based in Islamabad, Pakistan.\n\n"
                              "I have 3+ years of experience building and shipping production-grade mobile applications for iOS, Android, and the web. My goal is to always build products that provide pixel-perfect, performant experiences.\n\n"
                              "I'm proficient in Firebase, REST APIs, BLoC state management, and CI/CD pipelines. I also have extensive experience in AI integration and automation, including LLM-powered workflows and automated business communication systems.\n\n"
                              "Here are a few technologies I've been working with recently:",
                              style: TextStyle(
                                color: Color(0xff828da9),
                                fontSize: 18.0,
                                letterSpacing: 0.75,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 14.0,
                          ),
                          Container(
                            width: size.width * 0.40,
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    technology(context, "Flutter"),
                                    technology(context, "Dart"),
                                    technology(context, "Firebase"),
                                  ],
                                ),
                                SizedBox(
                                  width: size.width * 0.1,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    technology(context, "OpenAI API"),
                                    technology(context, "n8n Automation"),
                                    technology(context, "BLoC / Riverpod"),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //Profile Image
          Expanded(
            child: Container(
              height: size.height * 0.7,
              width: size.width * 0.2,
              // color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    right: 20,
                    child: Container(
                      height: size.height * 0.35,
                      width: size.width * 0.18,
                      decoration: BoxDecoration(
                        color: Color(0xff61F9D5),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    right: 30,
                    child: Container(
                      height: size.height * 0.35,
                      width: size.width * 0.18,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5.0),
                        image: DecorationImage(
                          image: AssetImage("images/noman-ali.jpeg"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Color(0xff61F9D5).withValues(alpha: 0.5),
                              BlendMode.hardLight),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color(0xff61F9D5).withValues(alpha: 0.6),
          size: 14.0,
        ),
        SizedBox(
          width: size(context, 8.0),
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 0.5,
          ),
        )
      ],
    );
  }

  double size(BuildContext context, double value) {
    return MediaQuery.of(context).size.width * value / 1000;
  }
}
