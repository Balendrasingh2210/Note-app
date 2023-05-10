import 'package:flutter/material.dart';
import 'package:notes_app/screens/archiveview.dart';

import '../../colors.dart';

Widget sectionTwo(context) {
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
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Archive()));
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            Icon(
              Icons.send_and_archive_outlined,
              size: 27,
              color: white.withOpacity(0.7),
            ),
            const SizedBox(
              width: 27,
            ),
            Text(
              "Archive",
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
