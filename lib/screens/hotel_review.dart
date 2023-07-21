import 'package:flutter/material.dart';

import '../models/summary.dart';
import '../utils/api.dart';

class HotelReview extends StatefulWidget {
  HotelReview({Key? key}) : super(key: key);
  static const routeName = '/hotel_review';

  @override
  State<HotelReview> createState() => _HotelReviewState();
}

class _HotelReviewState extends State<HotelReview> {
  List<SummaryModel>? HotelSummary = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSummary();
  }

  void getSummary() async {
    HotelSummary = await ApiService().getHotelSummary();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text("Hotel Review"),
        ),
      ),
      body: ListView.builder(
        itemCount: HotelSummary?.length,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "${HotelSummary?[index].accessibilityLabel}" ??
                        "Loading...",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // rating on features
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "${HotelSummary?[index].reviewSummaryDetails?[0].label}" ??
                                "Loading...",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${HotelSummary?[index].reviewSummaryDetails?[0].formattedRatingOutOfMaxA11y?.value}" ??
                                "Loading...",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          Text(
                            "Rating: ${HotelSummary?[index].reviewSummaryDetails?[0].ratingPercentage}%" ??
                                "Loading...",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  //Staff & Service
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "${HotelSummary?[index].reviewSummaryDetails?[1].label}" ??
                                "Loading...",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${HotelSummary?[index].reviewSummaryDetails?[1].formattedRatingOutOfMaxA11y?.value}" ??
                                "Loading...",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          Text(
                            "Rating: ${HotelSummary?[index].reviewSummaryDetails?[1].ratingPercentage}%" ??
                                "Loading...",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),

                  //Rating on Amenities
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "${HotelSummary?[index].reviewSummaryDetails?[2].label}" ??
                                "Loading...",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${HotelSummary?[index].reviewSummaryDetails?[2].formattedRatingOutOfMaxA11y?.value}" ??
                                "Loading...",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          Text(
                            "Rating: ${HotelSummary?[index].reviewSummaryDetails?[2].ratingPercentage}%" ??
                                "Loading...",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  //Property Condition & Facilities
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "${HotelSummary?[index].reviewSummaryDetails?[3].label}" ??
                                "Loading...",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${HotelSummary?[index].reviewSummaryDetails?[3].formattedRatingOutOfMaxA11y?.value}" ??
                                "Loading...",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          Text(
                            "Rating: ${HotelSummary?[index].reviewSummaryDetails?[3].ratingPercentage}%" ??
                                "Loading...",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),

                  //Eco-Friendly
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "${HotelSummary?[index].reviewSummaryDetails?[4].label}" ??
                                "Loading...",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${HotelSummary?[index].reviewSummaryDetails?[4].formattedRatingOutOfMaxA11y?.value}" ??
                                "Loading...",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          Text(
                            "Rating: ${HotelSummary?[index].reviewSummaryDetails?[4].ratingPercentage}%" ??
                                "Loading...",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "${HotelSummary?[index].overallScoreWithDescriptionA11y?.accessibilityLabel}" ??
                        "Loading...",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${HotelSummary?[index].propertyReviewCountDetails?.fullDescription}" ??
                        "Loading...",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${HotelSummary?[index].reviewDisclaimer}" ?? "Loading...",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
