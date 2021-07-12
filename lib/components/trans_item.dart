import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';
import 'package:avatars/avatars.dart';

class TransItem extends StatelessWidget {
  const TransItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 20.0,
      ),
      child: Container(
        height: 80,
        width: double.infinity,
        child: Row(
          children: [
            Avatar(
              name: 'Bill Gate',
              shape: AvatarShape.rectangle(
                50,
                50,
                BorderRadius.all(new Radius.circular(5.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: StyledText(
                text: '<black>Bill Gates</black> \n<grey>12 July, 2021</grey>',
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
            SizedBox(width: 100),
            Text(
              '\$145.00',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
