// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../styleguide.dart';
import '../../model/event.dart';
import 'package:provider/provider.dart';

import '../../model/guest.dart';

class EventDetailContent extends StatelessWidget {
  const EventDetailContent({super.key});

  @override
  Widget build(BuildContext context) {
    final event = Provider.of<Event>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 70.0),
        child: Column(
          children: [
          SizedBox(
            height: 90,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
            child: Text(
              event.title,
              style: eventWhiteTitleTextStyle,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
            child: FittedBox(
              child: Row(
                children: [
                  Text(
                    "-",
                    style: eventLocationTextStyle.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                  Icon(Icons.location_on,color: Colors.white,size: 15,),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    event.location,
                    style: eventLocationTextStyle.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left:16.0),
            child: Text(
              "GUESTS",style: guestTextStyle,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                 for (final guest in guests) Padding(padding: EdgeInsets.all(8),) 
              ],
            ),
          )
        ]),
      ),
    );
  }
}
