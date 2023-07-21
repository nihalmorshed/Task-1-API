import 'package:flutter/material.dart';

import 'hotel_review.dart';
import 'prayer.dart';
import 'regions.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);
  static const routeName = '/homepage';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api Integration Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Prayer.routeName);
              },
              child: const Text('Prayer Times'),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, HotelReview.routeName);
              },
              child: const Text('Show Hotel Review'),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Regions.routeName);
              },
              child: const Text('Show  Regions'),
            ),
          ],
        ),
      ),
    );
  }
}
