import 'package:flutter/material.dart';
import 'package:notes_app/colors.dart';
import 'package:notes_app/screens/editnoteview.dart';

class NoteView extends StatefulWidget {
  const NoteView({super.key});

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  String note1 =
      "Sunt officia qui cupidatat eu sint ex tempor ullamco.fu sint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjsint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjdsint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjdsint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjdsint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjdsint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjdsint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjdsint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjdlla dajukkk dhunask djhndnemdnfb dhfhd dhjcjd sint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjd sint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjd.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0.0,
        actions: [
          IconButton(
            splashRadius: 17,
            onPressed: () {},
            icon: const Icon(Icons.push_pin_outlined),
          ),
          IconButton(
            splashRadius: 17,
            onPressed: () {},
            icon: const Icon(Icons.archive_outlined),
          ),
          IconButton(
            splashRadius: 17,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EditNoteView()));
            },
            icon: const Icon(Icons.edit_outlined),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "HEADING",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              note1,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
