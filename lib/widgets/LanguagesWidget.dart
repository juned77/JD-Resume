import 'package:flutter/material.dart';
import 'package:jdwebapp/utils/constants.dart';
import 'package:jdwebapp/widgets/text_widget.dart';


class LanguagesWidget extends StatelessWidget {
  const LanguagesWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          text: 'Languages',
          fontFamilyName: proxima,
          textSize: 28,
          color: Colors.black,
        ),
        TextWidget(
          text: '•  English',
          fontFamilyName: proxima,
          padding: EdgeInsets.only(top: 20),
          textSize: 16,
          color: Colors.black,
        ),
        TextWidget(
          text: '•  JAVA,Kotlin,Swift,dart',
          fontFamilyName: proxima,
          padding: EdgeInsets.only(top: 10),
          textSize: 16,
          color: Colors.black,
        ),
        TextWidget(
          text: '•  Hindi,Urdu',
          fontFamilyName: proxima,
          padding: EdgeInsets.only(top: 10),
          textSize: 16,
          color: Colors.black,
        ),
      ],
    );
  }
}

