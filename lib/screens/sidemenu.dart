import 'package:flutter/material.dart';
import 'package:notes_app/colors.dart';
import 'package:notes_app/utils/sidemenu/section1.dart';
import 'package:notes_app/utils/sidemenu/section2.dart';
import 'package:notes_app/utils/sidemenu/section3.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(color: bgColor),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
                child: const Text(
                  "Google Keep",
                  style: TextStyle(
                      color: white, fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Divider(
                color: white.withOpacity(0.3),
              ),
              sectionOne(),
              SizedBox(
                height: 5,
              ),
              sectionTwo(),
              SizedBox(
                height: 5,
              ),
              sectionThree(),
            ],
          ),
        ),
      ),
    );
  }
}
