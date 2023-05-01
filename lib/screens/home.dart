import 'package:flutter/material.dart';
import 'package:notes_app/colors.dart';
import 'package:notes_app/screens/sidemenu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: true,
      key: _drawerkey,
      drawer: const SideMenu(),
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                                  color: white.withOpacity(0.5), fontSize: 16),
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
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: [
                  Text(
                    "ALL",
                    style: TextStyle(
                        color: white.withOpacity(0.5),
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
