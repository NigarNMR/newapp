import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/theme_model.dart';

class MostPopularCourse extends StatefulWidget {
  const MostPopularCourse({super.key});

  @override
  State<MostPopularCourse> createState() => _MostPopularCourseState();
}

class _MostPopularCourseState extends State<MostPopularCourse> {

  ColorNotifire notifier = ColorNotifire();

  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifire>(context, listen: true);

    return Scaffold(
      backgroundColor: notifier.background,
      resizeToAvoidBottomInset: false,

      body: const Padding(
        padding: EdgeInsets.only(right: 15, left: 15, bottom: 15),

      ),
    );
  }
}
