import 'package:flutter/material.dart';
import 'package:newfolder/utils/api.dart';

import '../models/summary.dart';

class Regions extends StatefulWidget {
  Regions({Key? key}) : super(key: key);
  static const routeName = '/regions';

  @override
  State<Regions> createState() => _RegionsState();
}

class _RegionsState extends State<Regions> {
  List<SummaryModel>? summaryModel = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getRegions();
  }

  void getRegions() async {
    await ApiService().getRegionInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Regions'),
      ),
    );
  }
}
