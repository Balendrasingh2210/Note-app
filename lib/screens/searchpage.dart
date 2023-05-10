import 'package:flutter/material.dart';
import 'package:notes_app/colors.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: white.withOpacity(0.1)),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white,
                  )),
              Expanded(
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    hintText: "Search your notes",
                    hintStyle:
                        TextStyle(color: white.withOpacity(0.5), fontSize: 16),
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
