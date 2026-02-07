import 'package:edu/base/bottom_navigation.dart';
import 'package:edu/screens/All_Hotels.dart';
import 'package:edu/screens/Allticket.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
 
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        "all_hotels":(context)=>all_Hotels(),
        "all_tickets":(context)=> AllTickets()
      },
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const bottom_navigation(),
    );
  }
}

