import 'package:edu/base/utils/app_json.dart';
import 'package:edu/base/widgets/hotel_view.dart';
import 'package:flutter/material.dart';

class all_Hotels extends StatelessWidget {
  const all_Hotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Hotels"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        child: Column(
          children: HotelList.map(
            (hotel) => Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: HotelView(hotel: hotel),
            ),
          ).toList(),
        ),
      ),
    );
  }
}