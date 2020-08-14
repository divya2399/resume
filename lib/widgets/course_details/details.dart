import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
              )
            ],
          ),
        );
      },
    );
  }
}
