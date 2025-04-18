import 'package:flutter/material.dart';
import 'package:my_app_isims/features/fetch_apod/data/apod_data.dart';
import 'package:my_app_isims/features/fetch_apod/presentation/controllers/apod_controller.dart';
import 'package:my_app_isims/features/fetch_apod/presentation/widgets/apod_widget.dart';
import 'package:get/get.dart';

class ApodPage extends StatelessWidget {
  const ApodPage({super.key});

  @override
  Widget build(BuildContext context) {
    final apodController = Get.put(ApodController());
    apodController.fetchApods();
    return Scaffold(
      appBar: AppBar(
        title: Text("APOD APP"),
      ),
      body: Obx(
        () {
          if (apodController.isLoading.value) {
            return Center(
                child: CircularProgressIndicator(color: Colors.black));
          }

          if (apodController.error.value) {
            return Text("Error bla");
          }

          return ListView.builder(
            itemCount: apodData.length,
            itemBuilder: (context, index) {
              return ApodWidget(apod: apodData[index]);
            },
          );
        },
      ),
    );
  }
}
