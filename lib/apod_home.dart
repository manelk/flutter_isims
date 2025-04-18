import 'package:flutter/material.dart';
import 'package:my_app_isims/apod_data.dart';
import 'package:intl/intl.dart';

class ApodHome extends StatelessWidget {
  const ApodHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APOD APP"),
      ),
      body: ListView.builder(
        itemCount: apodData.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(apodData[index].title),
                Text(DateFormat.yMMMMd().format(apodData[index].date)),
                Image.network(apodData[index].url, errorBuilder: (
                  BuildContext context,
                  Object error,
                  StackTrace? stackTrace,
                ) {
                  // return Text("sorry no image");
                  return Image.asset('assets/images/not_found.jpg');
                }),
              ],
            ),
          );
        },
      ),
    );
  }
}
