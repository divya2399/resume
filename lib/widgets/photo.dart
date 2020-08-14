import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Photo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation){
        double height =
        sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? 200
            : 400;

        double width = sizingInformation.deviceScreenType == DeviceScreenType.Mobile

            ? 200
            : 400;

        return Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.luminosity,
            color: Colors.transparent,
//            borderRadius: BorderRadius.circular(40),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("divya.jpg"),
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );

  }
}
