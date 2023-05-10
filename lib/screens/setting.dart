import 'package:flutter/material.dart';
import 'package:notes_app/colors.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0.0,
        title: const Text("Settings"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  "Sync",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const Spacer(),
                Transform.scale(
                  scale: 1.3,
                  child: Switch.adaptive(
                      value: value,
                      onChanged: (switchValue) {
                        setState(() {
                          value = switchValue;
                        });
                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
