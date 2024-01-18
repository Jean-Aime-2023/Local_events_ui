// ignore_for_file: unnecessary_import, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localevent_ui_app/styleguide.dart';

import '../../model/event.dart';

class EventWidget extends StatelessWidget {
  final Event event;
  EventWidget({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 20),
      elevation: 4,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24))),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                event.imagePath,
                height: 150,
                fit: BoxFit.fitWidth,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:8.0,left: 8.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            event.title,
                            style: eventTitleTextStyle,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          FittedBox(
                            child: Row(
                              children: [
                                Icon(Icons.location_on),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  event.location,
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Text(
                        event.duration.toUpperCase(),
                        textAlign: TextAlign.right,
                        style: eventLocationTextStyle.copyWith(
                            fontWeight: FontWeight.w900),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
