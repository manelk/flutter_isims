import 'package:flutter/material.dart';
import 'package:my_app_isims/features/fetch_apod/data/apod_data.dart';
import 'package:my_app_isims/features/fetch_apod/presentation/widgets/apod_widget.dart';

class ApodPage extends StatelessWidget {
  const ApodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APOD APP"),
      ),
      body: ListView.builder(
        itemCount: apodData.length,
        itemBuilder: (context, index) {
          return ApodWidget(apod: apodData[index]);
        },
      ),
    );
  }
}
