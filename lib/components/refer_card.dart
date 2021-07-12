import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class ReferCard extends StatelessWidget {
  const ReferCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey[200],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.amber[200],
                child: Icon(
                  Icons.person_add_alt_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: StyledText(
                text:
                    '<grey>Refer a friend and get extra <black> 10% </black> cashback this month.</grey> \n<bold>Learn more</bold>',
                tags: {
                  'black': StyledTextTag(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  'bold': StyledTextTag(
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
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
          ],
        ),
      ),
    );
  }
}
