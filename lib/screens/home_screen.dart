import 'package:edu/base/res/style.dart';
import 'package:edu/base/utils/app_json.dart';
import 'package:edu/screens/Allticket.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:edu/base/widgets/ticket_view.dart';
import 'package:edu/base/widgets/hotel_view.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 229, 229),
      body: ListView(
        children: [
          SizedBox.fromSize(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: STyle.Text_style),
                        SizedBox(height: 5),
                        Text("Book tickets", style: STyle.Text_style1),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 0),
                      width: 70,
                      height: 50,

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          12,
                        ), // This crops the image to match the container
                        child: Image.asset(
                          'assets/images/logo.png',
                          fit: BoxFit
                              .cover, // Ensures the image fills the rounded area
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsetsDirectional.symmetric(vertical: 4),
                  margin: EdgeInsets.symmetric(vertical: 5),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular),
                      Text("search"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Coming Flights", style: STyle.Text_style),
                      InkWell(
                        onTap: () {
                        Navigator.pushNamed(context, "all_tickets");
                        },
                        child: Padding(
                          padding: EdgeInsetsGeometry.all(4.0),
                          child: Text("View all", style: STyle.Text_style1),
                        ),
                      ),
                    ],
                  ),
                ),
                
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList
                        .map(
                          (singleTicket) => ticket_view(ticket: singleTicket),
                        )
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: 30,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hotels", style: STyle.Text_style),
                      InkWell(
                        onTap: () {
                        Navigator.pushNamed(context, "all_Hotels");
                        
                        },
                        child: Padding(
                          padding: EdgeInsetsGeometry.all(4.0),
                          child: Text("View all", style: STyle.Text_style1),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: HotelList.map(
                      (hotel) => HotelView(hotel: hotel),
                    ).toList(),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
