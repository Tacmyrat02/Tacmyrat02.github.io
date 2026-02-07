import 'package:edu/base/res/style.dart';
import 'package:edu/base/widgets/addLayout.dart';
import 'package:edu/base/widgets/bigDot.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class ticket_view extends StatelessWidget {
  final Map<String,dynamic> ticket;
  const ticket_view({super.key,required this.ticket});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Column(
        children: [
          // gok bolegi
          Container(
            margin: EdgeInsets.only(right: 16),
            padding: EdgeInsets.all(16),

            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 16, 125, 168),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      ticket['from']['code'],
                      style: STyle.Text_style1.copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    bigDot(),
                    Expanded(
                      child: Stack(
                        children: [
                          Center(
                            child: Transform.rotate(
                              angle: 1.57,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 24,
                            child: AddLayout(randomDevider: 6),
                          ),
                        ],
                      ),
                    ),
                    bigDot(),
                    Expanded(child: Container()),
                    Row(
                      children: [
                        Text(
                          ticket['to']['code'],
                          style: STyle.Text_style1.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      ticket['from']['name'],
                      style: STyle.Text_style2.copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    Text(
                      ticket['flying_time'],
                      style: STyle.Text_style2.copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    Row(
                      children: [
                        Text(
                          ticket['to']['name'],
                          style: STyle.Text_style2.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          //nokat we orta bolegi
          Container(
            margin: const EdgeInsets.only(right: 15),
            color: Colors.deepOrange, 
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.start, 
              children: [
                const SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color:  Color.fromARGB(255, 236, 229, 229), 
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                Expanded(child: AddLayout(randomDevider: 15)), // Dotted line
                const SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 236, 229, 229),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // orange bolegi
          Container(
            margin: EdgeInsets.only(right: 16),
            padding: EdgeInsets.all(16),

            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      ticket['date'],
                      style: STyle.Text_style1.copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                   
                    Expanded(
                      child: Stack(
                        children: [
                          Center(
                            child: Text(ticket['departure_time'],style: STyle.Text_style1.copyWith(color: Colors.white,)   ),

                          )
                        ],
                      ),
                    ),
                   
                    Expanded(child: Container()),
                    Row(
                      children: [
                        Text(
                          ticket['Number'].toString(),
                          style: STyle.Text_style1.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Date",
                      style: STyle.Text_style2.copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "                 Departure time",
                      style: STyle.Text_style2.copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    Row(
                      children: [
                        Text(
                          "Number",
                          style: STyle.Text_style2.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
