import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
// ignore: avoid_web_libraries_in_flutter
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;
class Details extends StatelessWidget {
  const Details({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.Desktop
                ? TextAlign.left
                : TextAlign.center;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 40
                : 70;

        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 15
                : 21;


        return Container(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: sizingInformation.deviceScreenType==DeviceScreenType.Desktop? MainAxisAlignment.center : MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'DIVYA\nSHARMA',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    height: 0.9,
                    color: Color(0xff005380),
                    fontSize: titleSize),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Flutter based app developer, Computer Science student and AWS enthusiast. A responsible team member with ability to lead a team as well.',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.7,
                  color: Colors.white
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RaisedButton(
                    shape: StadiumBorder(),
                    child: Text("Resume", style: TextStyle(color: Colors.white),),
                    color: Color(0xFF01579B),
                    onPressed: () {
                      final url = "assets/PDF.pdf";
                      final anchor = html.document.createElement('a') as html.AnchorElement
                        ..href = url
                        ..style.display = 'none'
                        ..download = 'Resume.pdf';
                      html.document.body.children.add(anchor);
                      anchor.click();
                      html.document.body.children.remove(anchor);
                    },
                    padding: EdgeInsets.all(10),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  RaisedButton(
                    //padding: EdgeInsets.all(6),
                    color: Colors.black,
                    child: FaIcon(FontAwesomeIcons.github,color: Colors.white,),
                    onPressed: () {
                      html.window.open("https://github.com/divya2399", "Git");
                    },
                    //color: Colors.blue,
                    shape: StadiumBorder(),
                  ),
                  RaisedButton(
                    color: Colors.black,
                    child: FaIcon(FontAwesomeIcons.linkedinIn,color: Colors.white,),
                    onPressed: () {
                      html.window.open("https://www.linkedin.com/in/divya234", "LinkedIn");
                    },
                    shape: StadiumBorder(),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
