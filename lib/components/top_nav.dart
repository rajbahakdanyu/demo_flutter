import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class TopNav extends StatelessWidget implements PreferredSizeWidget {
  final Widget navWidget;

  const TopNav({required this.navWidget});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: StyledText(
        text: '<black><blue>Cashy</blue>Bank</black>',
        tags: {
          'black': StyledTextTag(
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          'blue': StyledTextTag(
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        },
      ),
      actions: [
        navWidget,
        IconButton(
          onPressed: null,
          icon: Icon(Icons.more_vert),
        ),
      ],
    );
  }
}
