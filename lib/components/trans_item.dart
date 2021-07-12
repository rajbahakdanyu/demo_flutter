import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';
import 'package:avatars/avatars.dart';

class TransItem extends StatelessWidget {
  final String name;
  final String date;
  final String amount;

  const TransItem(
      {required this.name, required this.date, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 20.0,
      ),
      child: Container(
        height: 75,
        width: double.infinity,
        child: Row(
          children: [
            Avatar(
              name: name,
              shape: AvatarShape.rectangle(
                50,
                50,
                BorderRadius.all(new Radius.circular(5.0)),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: StyledText(
                  text: '<black>$name</black> \n<grey>$date</grey>',
                  tags: {
                    'black': StyledTextTag(
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    'grey': StyledTextTag(
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  },
                ),
              ),
            ),
            Expanded(
              child: Text(
                amount,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
