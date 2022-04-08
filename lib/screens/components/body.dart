import 'dart:ui';

import 'package:project_final/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'clock.dart';
import 'country_card.dart';
import 'time_in_hour_and_minute.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: ListView(
          children: [
            Center(
              child: Text(
                "Thai",
                style: TextStyle(fontSize: 25)
              ),
            ),
            TimeInHourAndMinute(),
            Spacer(),
            Clock(),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  CountryCard(
                    country: "Japan",
                    timeZone: "+2 HRS ",
                    iconSrc: "assets/icons/watch_2.svg",
                    time: "",
                    period: "",
                  ),
                  CountryCard(
                    country: "korea",
                    timeZone: "+2 HRS ",
                    iconSrc: "assets/icons/watch_2.svg",
                    time: "",
                    period: "",
                  ),
                  CountryCard(
                    country: "Taiwan",
                    timeZone: "+1 HRS ",
                    iconSrc: "assets/icons/watch_2.svg",
                    time: "",
                    period: "",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}