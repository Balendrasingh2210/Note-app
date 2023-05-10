import 'package:flutter/material.dart';
import 'package:notes_app/colors.dart';
import 'package:notes_app/screens/noteview.dart';
import 'package:notes_app/screens/sidemenu.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Archive extends StatefulWidget {
  const Archive({super.key});

  @override
  State<Archive> createState() => _ArchiveState();
}

class _ArchiveState extends State<Archive> {
  String note = "Sunt officia qui cupidatat eu sint ex tempor ullamco.";
  String note1 =
      "Sunt officia qui cupidatat eu sint ex tempor ullamco.fu sint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjsint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjdsint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjdsint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjdsint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjdsint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjdsint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjdsint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjdlla dajukkk dhunask djhndnemdnfb dhfhd dhjcjd sint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjd sint ex tempor ullamco.fulla dajukkk dhunask djhndnemdnfb dhfhd dhjcjd.";
  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(context,
      //         MaterialPageRoute(builder: (context) => const CreateNoteView()));
      //   },
      //   backgroundColor: cardColor,
      //   child: const Icon(
      //     Icons.add,
      //     size: 45,
      //   ),
      // ),
      endDrawerEnableOpenDragGesture: true,
      key: _drawerkey,
      drawer: const SideMenu(),
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: cardColor,
                  boxShadow: [
                    BoxShadow(
                        color: black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 3)
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            _drawerkey.currentState!.openDrawer();
                          },
                          icon: const Icon(
                            Icons.menu,
                            color: white,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        // ignore: sized_box_for_whitespace
                        Container(
                          height: 55,
                          width: 170,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Search your notes",
                                style: TextStyle(
                                    color: white.withOpacity(0.5),
                                    fontSize: 16),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          TextButton(
                            style: ButtonStyle(
                                overlayColor: MaterialStateColor.resolveWith(
                                    (states) => white.withOpacity(0.1)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.1),
                                ))),
                            onPressed: () {},
                            child: const Icon(
                              Icons.grid_view,
                              color: white,
                            ),
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          const CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Column(
                  children: [
                    Text(
                      "All",
                      style: TextStyle(
                          color: white.withOpacity(0.5),
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                // height: MediaQuery.of(context).size.height,
                child: MasonryGridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  shrinkWrap: true,
                  itemCount: 10,
                  crossAxisCount: 2,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NoteView()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color:
                            index.isEven ? Colors.green[900] : Colors.blue[900],
                        border: Border.all(
                            color: index.isEven
                                ? Colors.green.withOpacity(0.4)
                                : Colors.blue.withOpacity(0.4)),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'HEADING',
                            style: TextStyle(
                                color: white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            index.isEven
                                ? note.length > 150
                                    ? "${note.substring(0, 150)}..."
                                    : note
                                : note1.length > 150
                                    ? "${note1.substring(0, 150)}..."
                                    : note1,
                            style: const TextStyle(color: white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Column(
                  children: [
                    Text(
                      "List View",
                      style: TextStyle(
                          color: white.withOpacity(0.5),
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                // height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NoteView()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color:
                            index.isEven ? Colors.green[900] : Colors.blue[900],
                        border: Border.all(
                            color: index.isEven
                                ? Colors.green.withOpacity(0.4)
                                : Colors.blue.withOpacity(0.4)),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'HEADING',
                            style: TextStyle(
                                color: white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            index.isEven
                                ? note.length > 150
                                    ? "${note.substring(0, 150)}..."
                                    : note
                                : note1.length > 150
                                    ? "${note1.substring(0, 150)}..."
                                    : note1,
                            style: const TextStyle(color: white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
