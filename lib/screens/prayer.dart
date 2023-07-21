import 'package:flutter/material.dart';

import '../models/timedata.dart';
import '../utils/api.dart';

class Prayer extends StatefulWidget {
  Prayer({Key? key}) : super(key: key);
  static const routeName = '/prayer';

  @override
  State<Prayer> createState() => _PrayerState();
}

class _PrayerState extends State<Prayer> {
  List<TimeData>? prayerTimes = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTimes();
  }

  void getTimes() async {
    prayerTimes = await ApiService().getPrayerTimes();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("April 2017")),
      ),
      body: ListView.builder(
        itemCount: prayerTimes?.length,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text("${prayerTimes?[index].date.gregorian.weekday.en}" ??
                      "Loading..."),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "${prayerTimes?[index].date.gregorian.day} ${prayerTimes?[index].date.gregorian.month.en} ${prayerTimes?[index].date.gregorian.year}" ??
                        "Loading...",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "${prayerTimes?[index].date.hijri.day} ${prayerTimes?[index].date.hijri.month.en} ${prayerTimes?[index].date.hijri.year}" ??
                        "Loading...",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
            // child:
            //    Column(
            //     children: [
            //
            //     ],
            //   ),
            //   title: Column(
            //     children: [
            //
            //     ],
            //   ),

            // subtitle:
            // trailing:
          );
        },
      ),
    );
  }
}
