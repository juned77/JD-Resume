import 'package:flutter/material.dart';
import 'package:jdwebapp/utils/constants.dart';
import 'package:jdwebapp/widgets/text_widget.dart';


class ContactsWidget extends StatelessWidget {
  const ContactsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          text: 'Contact',
          fontFamilyName: proxima,
          textSize: 28,
          color: Colors.black,
        ),
        SizedBox(
          height: 20,
        ),
        Row(children: <Widget>[
          Icon(Icons.place, size: 15),
          SizedBox(
            width: 10,
          ),
          Text(
            '36, Ahmed nagar ,delhi bypass road,\nJaipur 302003',
            style: TextStyle(
              fontFamily: proxima,
              fontSize: 16,
              color: Colors.black,
            ),
          )
        ]),
        SizedBox(
          height: 10,
        ),
        Row(children: <Widget>[
          Icon(
            Icons.phone,
            size: 15,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '95 29 238553',
            style: TextStyle(
              fontFamily: proxima,
              fontSize: 16,
              color: Colors.black,
            ),
          )
        ]),
        SizedBox(
          height: 10,
        ),
        Row(children: <Widget>[
          Icon(
            Icons.mail,
            size: 15,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'jndsddq14@gmail.com',
            style: TextStyle(
              fontFamily: proxima,
              fontSize: 16,
              color: Colors.black,
            ),
          )
        ]),
      ],
    );
  }
}

