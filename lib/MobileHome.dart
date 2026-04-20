import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_d/CustomText.dart';
import 'package:web_d/Method.dart';
import 'package:web_d/MobileProject.dart';
import 'package:web_d/MobileWork.dart';

class MobileHome extends StatefulWidget {
  @override
  _MobileHomeState createState() => _MobileHomeState();
}


class _MobileHomeState extends State<MobileHome> {
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.arrow_forward_ios,
          color: Color(0xffCCD6F6).withValues(alpha: 0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.04,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Method method = Method();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(

      endDrawer: Drawer(
          elevation: 6.0,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  accountName: Text("Noman Ali"),
                  accountEmail: Text("noman.alii2026@gmail.com")),
              ListTile(
                title: Text("Share"),
                leading: Icon(Icons.share),
              ),
              ListTile(
                leading: Icon(Icons.group),
                onTap: () {
                   Navigator.pop(context);
                },
                title: Text("About"),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text("Version 1.0.1"),
                ),
              )
            ],
          )),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              title: Text(''),
              elevation: 0.0,
              backgroundColor: Colors.black.withValues(alpha: 0.1),
            ),
          ),
        ),
        preferredSize: Size(
          double.infinity,
          56.0,
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [const Color(0xff780206), const Color(0xff061161)],
              )
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.15,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                    child: Image.asset(
                      "images/noman.jpeg",
                      width: 150,
                      height: 150,
                    )
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Noman Ali",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w900,
                    fontSize: 52,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "Flutter Developer with 3+ years of experience building production-grade mobile applications. Proficient in Firebase, AI integration, and automation.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffCCD6F6).withValues(alpha: 0.6),
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.github,
                        color: Color(0xffffA8B2D1),
                        size: 18.0,
                      ),
                      onPressed: () {
                        method.launchURL("https://github.com/nomanali007");
                      },
                    ),
                    IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: Color(0xffffA8B2D1),
                        size: 18.0,
                      ),
                      onPressed: () {
                        method.launchURL(
                            "https://www.linkedin.com/in/nomanali007");
                      },
                    ),
                    IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.globe,
                        color: Color(0xffffA8B2D1),
                        size: 18.0,
                      ),
                      onPressed: () {
                        method.launchURL("https://nomanali007.github.io/MyPortfolio");
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),

                //About me
                FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                    width: size.width,
                    //color: Colors.purple,
                    child: Column(
                      children: [
                        //About me title
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            CustomText(
                              text: "About Me",
                              textsize: 26.0,
                              color: Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01,
                            ),
                            Container(
                              width: size.width / 4,
                              height: 1.10,
                              color: Color(0xff303C55),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: size.height * 0.07,
                        ),

                        //About me desc
                        Wrap(
                          children: [
                            CustomText(
                              text:
                              "Hello! I'm Noman Ali, a Flutter Developer based in Islamabad. I specialize in building high-quality mobile applications and AI-powered automation workflows.\n",
                              textsize: 16.0,
                              color: Color(0xff828DAA),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.75,
                            ),
                            CustomText(
                              text:
                              "With over 3 years of professional experience, I have worked on large-scale projects like CarBee and OneStop TV, focusing on performance and user experience.\n",
                              textsize: 16.0,
                              color: Color(0xff828DAA),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.75,
                            ),
                            CustomText(
                              text:
                              "Here are a few technologies I've been working with recently:\n\n",
                              textsize: 16.0,
                              color: Color(0xff828DAA),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.75,
                            ),
                          ],
                        ),

                        SizedBox(
                          height: size.height * 0.06,
                        ),

                        Container(
                          width: size.width,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  technology(context, "Flutter"),
                                  technology(context, "Dart"),
                                  technology(context, "Firebase"),

                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  technology(context, "OpenAI API"),
                                  technology(context, "n8n"),
                                  technology(context, "BLoC"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: size.height * 0.08,
                ),

                //Where I've Worked title
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    CustomText(
                      text: "Experience",
                      textsize: 26.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01,
                            ),
                            Container(
                              width: size.width / 4,
                              height: 1.10,
                              color: Color(0xff303C55),
                            ),
                          ],
                        ),

                MobileWork(),

                SizedBox(
                  height: size.height * 0.07,
                ),

                //Some Things I've Built title
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "What I've build",
                      textsize: 26.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      width: size.width / 4,
                      height: 1.10,
                      color: Color(0xff303C55),
                    ),
                  ],
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {
                     method.launchURL("https://github.com/nomanali007");
                  },
                  image: "images/pic4.jpg",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {
                    method.launchURL("https://github.com/nomanali007");
                  },
                  image: "images/pic5.jpg",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {
                    method.launchURL("https://github.com/nomanali007");
                  },
                  image: "images/ss.png",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),


                FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                    //height: size.aspectRatio,
                    width: size.width,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 16.0,
                        ),
                        CustomText(
                          text: "Get In Touch",
                          textsize: 42.0,
                          color: Colors.white,
                          letterSpacing: 3.0,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(
                          height: size.height * 0.04,
                        ),
                        Wrap(
                          alignment: WrapAlignment.center,
                          children: [
                            Text(
                              "Whether you have a question or just want to say hi, I'll try my best to get back to you!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white.withValues(alpha: 0.4),
                                letterSpacing: 0.75,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.07,
                        ),
                        InkWell(
                          onTap: () {
                            method.launchEmail();
                          },
                          child: Card(
                            elevation: 4.0,
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(0.85),
                              height: size.height * 0.10,
                              width: size.width * 0.30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xff83a0e0),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  "Say Hello",
                                  style: TextStyle(
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.github,
                        color: Color(0xffffA8B2D1),
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchURL("https://github.com/nomanali007");
                      },
                    ),
                    IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: Color(0xffffA8B2D1),
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchURL(
                            "https://www.linkedin.com/in/nomanali007");
                      },
                    ),
                    IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Color(0xffffA8B2D1),
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchURL("https://github.com/nomanali007");
                      },
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.instagram),
                      color: Color(0xffffA8B2D1),
                      onPressed: () {
                        method.launchURL(
                            "https://github.com/nomanali007");
                      },
                      iconSize: 15.0,
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.facebook),
                      color: Color(0xffffA8B2D1),
                      onPressed: () {
                        method.launchURL(
                            "https://github.com/nomanali007");
                      },
                      iconSize: 15.0,
                    ),
                    IconButton(
                        icon: Icon(Icons.mail),
                        color: Color(0xffffA8B2D1),
                        iconSize: 16.0,
                        onPressed: () {
                          method.launchEmail();
                        }),
                  ],
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                //Footer
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.white,
                  child: Text(
                    "Designed & Built by Noman Ali",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.4),
                      letterSpacing: 1.75,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),);
  }
}
