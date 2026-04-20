import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_d/CustomText.dart';

class FeatureProject extends StatelessWidget {
  final String imagePath;
  final String? projectTitle;
  final String? projectDesc;
  final String? tech1;
  final String? tech2;
  final String? tech3;
  final VoidCallback? ontab;

  const FeatureProject(
      {Key? key,
        required this.imagePath,
        this.ontab,
        this.projectDesc,
        this.projectTitle,
        this.tech1,
        this.tech2,
        this.tech3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 0.999,
      width: size.width - 100,
      child: Column(
        children: [
          SizedBox(
            height: size.height - 100,
            width: size.width - 84,
            child: Stack(
              children: [
                //Image
                Positioned(
                  top: size.height * 0.02,
                  left: 20.0,
                  child: SizedBox(
                    height: size.height * 0.60,
                    width: size.width * 0.5,
                    child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage(imagePath),
                    ),
                  ),
                ),

                // Short Desc
                Positioned(
                  top: size.height / 6,
                  right: 10.0,
                  child: Container(
                    alignment: Alignment.center,
                    height: size.height * 0.18,
                    width: size.width * 0.35,
                    color: const Color(0xff172A45),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: CustomText(
                            text: projectDesc ?? "",
                            textsize: 16.0,
                            color: Colors.white.withValues(alpha: 0.4),
                            letterSpacing: 0.75,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Project Tiitle
                Positioned(
                  top: 16.0,
                  right: 10.0,
                  child: SizedBox(
                    height: size.height * 0.10,
                    width: size.width * 0.25,
                    child: Wrap(
                      alignment: WrapAlignment.end,
                      children: [
                        CustomText(
                          text: projectTitle ?? "",
                          textsize: 27,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.75,
                        ),
                      ],
                    ),
                  ),
                ),

                // Project Resources
                Positioned(
                  top: size.height * 0.36,
                  right: 10.0,
                  child: SizedBox(
                    height: size.height * 0.08,
                    width: size.width * 0.25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomText(
                          text: tech1 ?? "",
                          textsize: 14,
                          color: Colors.grey,
                          letterSpacing: 1.75,
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        CustomText(
                          text: tech2 ?? "",
                          textsize: 14,
                          color: Colors.grey,
                          letterSpacing: 1.75,
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        CustomText(
                          text: tech3 ?? "",
                          textsize: 14,
                          color: Colors.grey,
                          letterSpacing: 1.75,
                        ),
                      ],
                    ),
                  ),
                ),

                // Gitub Link
                Positioned(
                  top: size.height * 0.42,
                  right: 10.0,
                  child: SizedBox(
                    height: size.height * 0.08,
                    width: size.width * 0.25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.link),
                          color: Colors.white.withValues(alpha: 0.3),
                          onPressed: ontab,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
