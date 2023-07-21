import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/regionModel.dart';
import '../models/summary.dart';
import '../models/timedata.dart';
import 'constants.dart';
import 'hotel_api_const.dart';

class ApiService {
  // Hotel Api Function
  Future<List<SummaryModel>?> getHotelSummary() async {
    try {
      var url = Uri.parse(HotelApi.HotelReviewUrl);
      url = url.replace(
        queryParameters: {
          'domain': 'AE',
          'hotel_id': '1105156',
          'locale': 'en_GB'
        },
      );
      final response = await http.get(
        url,
        headers: HotelApi.HotelHeaders,
      );
      if (response.statusCode == 200) {
        final parsed = json.decode(response.body);
        print(response.body);
        return parsed
            .map<SummaryModel>((json) => SummaryModel.fromJson(json))
            .toList();
      } else {
        throw Exception(response.statusCode.toString());
      }
    } catch (e) {
      print(e);
    }
  }

  Future<List<RegionModel>?> getRegionInfo() async {
    try {
      var url = Uri.parse(HotelApi.HotelRegionUrl);
      url = url.replace(
        queryParameters: {
          'locale': 'en_GB',
          'query': 'Prag',
          'domain': 'AE',
        },
      );
      final response = await http.get(
        url,
        headers: HotelApi.HotelHeaders,
      );
      if (response.statusCode == 200) {
        final parsed = json.decode(response.body);
        print(response.body);
        return parsed
            .map<RegionModel>((json) => RegionModel.fromJson(json))
            .toList();
      } else {
        throw Exception(response.statusCode.toString());
      }
    } catch (e) {
      print(e);
    }
  }

  // Prayer Times Api Data
  Future<List<TimeData>?> getPrayerTimes() async {
    try {
      var url = Uri.parse(ApiConstants.BASE_URL);
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final parsed = json.decode(response.body);
        final parsed2 = parsed['data'] as List;
        print(parsed2);
        return parsed2
            .map<TimeData>((json) => TimeData.fromJson(json))
            .toList();
      } else {
        throw Exception('Failed to load Prayer Times');
      }
    } catch (e) {
      print(e);
    }
  }
}
