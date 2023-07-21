import 'package:flutter/material.dart';
import 'package:newfolder/models/regionmodel.dart';
import 'package:newfolder/utils/api.dart';

class Regions extends StatefulWidget {
  Regions({Key? key}) : super(key: key);
  static const routeName = '/regions';

  @override
  State<Regions> createState() => _RegionsState();
}

class _RegionsState extends State<Regions> {
  List<RegionModel>? regionsList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getRegions();
  }

  void getRegions() async {
    regionsList = (await ApiService().getRegionInfo())?.cast<RegionModel>();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Regions'),
      ),
      body: ListView.builder(
        itemCount: regionsList?.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
                regionsList?[index].data![0].regionNames!.fullName ?? 'Nodata'),
            subtitle: Text(
                regionsList?[index].data![0].regionNames?.displayName ??
                    'Nodata'),
          );
        },
      ),
    );
  }
}
