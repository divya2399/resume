import 'package:flutter/material.dart';
import 'package:the_basics/widgets/course_details/details.dart';
import 'package:the_basics/widgets/photo.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Photo(),
        SizedBox(
          height: 30,
        ),
          Details(),
        ],
      ),
    );
  }
}
