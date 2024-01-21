// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, unnecessary_import, prefer_const_constructors, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/event.dart';
import 'event_datails_background.dart';
import 'event_details_content.dart';

class EventDetailsPage extends StatelessWidget {
  final Event event;

  EventDetailsPage({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider<Event>.value(
        value: event,
        child: Stack(
          fit: StackFit.expand,
          children: [
            EventDetailBackground(),
            EventDetailContent()
          ],
        ),
      )
    );
  }
}
