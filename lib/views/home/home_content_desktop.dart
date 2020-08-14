import 'package:flutter/material.dart';
import 'package:the_basics/widgets/course_details/details.dart';
import 'package:the_basics/widgets/photo.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Details(),
        Expanded(
          child: Center(
            child: Photo(),
          ),
        )
      ],
    );
  }
}
