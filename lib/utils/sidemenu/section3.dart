import 'package:flutter/material.dart';

import '../../colors.dart';

Widget sectionThree() {
  return Container(
    // padding: EdgeInsets.all(5),
    margin: const EdgeInsets.only(right: 10),
    child: TextButton(
      style: ButtonStyle(
          // backgroundColor:
          //     MaterialStateProperty.all(Colors.orangeAccent.withOpacity(0.3)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50))))),
      onPressed: () {},
      child: Container(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            Icon(
              Icons.settings_outlined,
              size: 27,
              color: white.withOpacity(0.7),
            ),
            const SizedBox(
              width: 27,
            ),
            Text(
              "Settings",
              style: TextStyle(
                color: white.withOpacity(0.7),
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
