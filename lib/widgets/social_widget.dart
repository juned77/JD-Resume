import 'dart:js' as js;

import 'package:flutter/material.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Image.asset('assets/icons/linkedin.webp'),
          onPressed: () {
            js.context.callMethod("open",
                ["https://www.linkedin.com/in/juned-siddiqui-0b4a45a3/"]);
          },
          iconSize: 10.0,
        ),
        SizedBox(
          width: 20.0,
        ),
        IconButton(
          icon: Image.asset('assets/icons/facebook.webp'),
          onPressed: () {
            js.context.callMethod(
                "open", ["https://www.facebook.com/juned.siddiqui.39/"]);
          },
          iconSize: 10.0,
        ),
        SizedBox(
          width: 20.0,
        ),
        IconButton(
          icon: Image.asset('assets/icons/instagram.webp'),
          onPressed: () {
            js.context.callMethod(
                "open", ["https://www.instagram.com/sid_junaid77/"]);
          },
          iconSize: 10.0,
        ),
      ],
    );
  }
}
