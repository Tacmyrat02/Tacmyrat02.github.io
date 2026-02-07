import 'package:edu/base/res/style.dart';
import 'package:flutter/material.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    print("Hotel price: ${hotel['price']}");
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: STyle.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: STyle.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(hotel['image']), // Use NetworkImage
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            hotel['place'],
            style: STyle.Text_style2.copyWith(color: STyle.kakiColor),
          ),
          const SizedBox(height: 5),
          Text(
            hotel['destination'],
            style: STyle.Text_style.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(
            "\$${hotel['price']}/night",
            style: STyle.Text_style.copyWith(color: STyle.kakiColor),
          ),
        ],
      ),
    );
  }
}
