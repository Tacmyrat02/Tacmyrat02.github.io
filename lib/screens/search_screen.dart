import 'package:edu/base/res/style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 229, 229),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40),
          Text(
            "What are\nyou looking for?",
            style: STyle.Text_style.copyWith(fontSize: 35),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Icon(FluentSystemIcons.ic_fluent_search_regular,
                    color: Color(0xFFBFC205)),
                const SizedBox(width: 10),
                Text(
                  "Search",
                  style: STyle.Text_style2,
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recent Searches", style: STyle.Text_style1),
              Text(
                "View all",
                style: STyle.Text_style2.copyWith(color: STyle.primaryColor),
              ),
            ],
          ),
          const SizedBox(height: 15),
          // Example recent items
          Container(
            height: 190,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 1))
                ]),
           child: Center(child: Text("Use this screen for search functionality")),
          )
        ],
      ),
    );
  }
}
