import 'package:flutter/material.dart';
import 'package:jdwebapp/utils/constants.dart';
import 'package:jdwebapp/widgets/EducationWidget.dart';
import 'package:jdwebapp/widgets/ExperienceWidget.dart';
import 'package:jdwebapp/widgets/LanguagesWidget.dart';
import 'package:jdwebapp/widgets/contacts_widget.dart';
import 'package:jdwebapp/widgets/intro_widget.dart';
import 'package:jdwebapp/widgets/skills_widget.dart';
import 'package:jdwebapp/widgets/social_widget.dart';
import 'package:jdwebapp/widgets/text_widget.dart';

class DesktopScreen extends StatefulWidget {
  @override
  _DesktopScreenState createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  MediaQueryData _queryData;
  var _opacity = 0.7585224721623564;
  var _xOffset = 9.995734554597675;
  var _yOffset = 1.843121408045917;
  var _blurRadius = 15.1880724676724;
  var timer;

  ceateTimer() {
    timer = Future.delayed(Duration(seconds: 3), () {
      // deleayed code here
      print('delayed execution');
    });
  }

  @override
  Widget build(BuildContext context) {
    _queryData = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: myBackground,
        child: ListView(
          children: [
            SizedBox(
              height: 70,
            ),
            Image.asset(
              'assets/images/my_image.png',
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Hi! I am Junaid',
              style: TextStyle(
                  color: Color(0xff60BEEE),
                  fontSize: 40,
                  fontFamily: 'Proxima',
                  shadows: [
                    Shadow(
                      color: Colors.blue.shade900.withOpacity(_opacity),
                      offset: Offset(_xOffset, _yOffset),
                      blurRadius: _blurRadius,
                    )
                  ]),
              textAlign: TextAlign.center,
            ),
            Text(
              'Apps Developer',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Proxima',
                  shadows: [
                    Shadow(
                      color: Colors.blue.shade900.withOpacity(_opacity),
                      offset: Offset(_xOffset, _yOffset),
                      blurRadius: _blurRadius,
                    )
                  ]),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 70,
            ),
            IntrinsicHeight(
              child: Row(
                children: [
                  SizedBox(
                    width: _queryData.size.width * 0.10,
                  ),
                  Container(
                    width: _queryData.size.width * 0.39,
                    padding: EdgeInsets.all(32),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: IntroWidget(),
                  ),
                  SizedBox(
                    width: _queryData.size.width * 0.02,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF3366CC),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: _queryData.size.width * 0.39,
                    padding: EdgeInsets.all(32),
                    child: SkillsWidget(),
                  ),
                  SizedBox(
                    width: _queryData.size.width * 0.10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: _queryData.size.width * 0.02,
            ),
            IntrinsicHeight(
              child: Row(
                children: [
                  SizedBox(
                    width: _queryData.size.width * 0.10,
                  ),
                  Container(
                    width: _queryData.size.width * 0.49,
                    padding: EdgeInsets.all(32),
                    decoration: BoxDecoration(
                        color: Color(0xFF3366CC),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: EducationWidget(),
                  ),
                  SizedBox(
                    width: _queryData.size.width * 0.02,
                  ),
                  Container(
                    width: _queryData.size.width * 0.29,
                    padding: EdgeInsets.all(32),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: LanguagesWidget(),
                  ),
                  SizedBox(
                    width: _queryData.size.width * 0.10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: _queryData.size.width * 0.02,
            ),
            IntrinsicHeight(
              child: Row(
                children: [
                  SizedBox(
                    width: _queryData.size.width * 0.10,
                  ),
                  Container(
                    width: _queryData.size.width * 0.29,
                    padding: EdgeInsets.all(32),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ContactsWidget(),
                  ),
                  SizedBox(
                    width: _queryData.size.width * 0.02,
                  ),
                  Container(
                    width: _queryData.size.width * 0.49,
                    padding: EdgeInsets.all(32),
                    decoration: BoxDecoration(
                        color: Color(0xFF3366CC),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ExperienceWidget(),
                  ),
                  SizedBox(
                    width: _queryData.size.width * 0.10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
            ),
            TextWidget(
              padding: EdgeInsets.only(top: 20),
              color: Colors.white,
              fontFamilyName: proxima,
              textAlign: TextAlign.center,
              textSize: 16,
              text: 'Copyright © 2020 My Flutter Profile',
            ),
            SizedBox(
              height: 70,
            ),
            SocialWidget(),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }

  Widget getCircularImage(double size) {
    return CircleAvatar(
      radius: size,
      backgroundColor: Colors.indigo,
      child: CircleAvatar(
        radius: 2,
        child: ClipOval(
            child: Image.network(
                'https://dummyimage.com/200x200/000000/fff&text=test')),
      ),
    );
  }
}
