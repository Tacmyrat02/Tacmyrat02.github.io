import 'package:edu/base/utils/app_json.dart';
import 'package:edu/base/widgets/ticket_view.dart';
import 'package:edu/main.dart';
import 'package:flutter/material.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("All Tickets"),
      
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(40),
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: ticketList
                        .map(
                          (singleTicket) => ticket_view(ticket: singleTicket),
                        )
                        .toList(),
                  ),
                ),
    );
  }
}