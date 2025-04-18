import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_app_isims/features/fetch_apod/models/apod_model.dart';

class ApodWidget extends StatelessWidget {
  final ApodModel apod;
  const ApodWidget({super.key, required this.apod});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Stack(
          children: [
            Image.network(apod.url, errorBuilder: (
              BuildContext context,
              Object error,
              StackTrace? stackTrace,
            ) {
              return Image.asset('assets/images/not_found.jpg');
            }),
            Positioned(
              bottom: 5,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateFormat.yMMMMd().format(apod.date),
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                  Text(
                    apod.title,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
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
