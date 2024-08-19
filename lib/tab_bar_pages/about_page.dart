import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/overview_model.dart';
import '../model/theme_model.dart';


class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  ColorNotifire notifier = ColorNotifire();
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifire>(context, listen: true);
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: notifier.background,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "Overview",
              style: TextStyle(
                fontFamily: "Manrope_bold",
                fontSize: 18,
                color: notifier.textColor,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.2,
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: overview.length,
              itemBuilder: (context, index) {
                OverviewModel data = overview[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  minLeadingWidth: 20,
                  leading: Image.asset(
                    data.image,
                    scale: 2.9,
                    color: notifier.textColorGrey,
                  ),
                  title: Text(
                    data.desc,
                    style:  TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "Manrope_bold",
                      fontSize: 12,
                      color: notifier.textColor,
                      letterSpacing: 0.2,
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: height / 60),
             Text(
              "Mentor",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Manrope_bold",
                fontSize: 18,
                color: notifier.textColor,
                letterSpacing: 0.2,
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed("about_mentor");
              },
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                dense: true,
                leading: Image.asset("assets/images/overview_1.png"),
                title:  Text(
                  "Alex Adams",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "Manrope_bold",
                    fontSize: 16,
                    color: notifier.textColor,
                    letterSpacing: 0.4,
                  ),
                ),
                subtitle: const Text(
                  "UI UX Design",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Manrope_semibold",
                    fontSize: 12,
                    color: Color(0xff64748B),
                    letterSpacing: 0.2,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon:  Icon(
                    Icons.arrow_forward_ios,
                    color: notifier.iconColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: height / 50),
             Text(
              "Keypoint",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Manrope_bold",
                fontSize: 18,
                color: notifier.textColor,
                letterSpacing: 0.2,
              ),
            ),
            SizedBox(height: height / 64),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: keypoint.length,
              itemBuilder: (context, index) {
                KeypointModel data = keypoint[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  leading: Image.asset("assets/icons/keypoint.png",scale: 2.5,),
                  minLeadingWidth: 20,
                  title: Text(
                    data.desc,
                    style:  TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "Manrope_semibold",
                      fontSize: 12,
                      color: notifier.textColor,
                      letterSpacing: 0.2,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
