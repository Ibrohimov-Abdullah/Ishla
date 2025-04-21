import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../view/pages/home_detail_page.dart';

class HomePageController extends GetxController {
  final searchController = TextEditingController();
  var isLoading = false.obs;
  var sampleJob = {
    'title': 'Product Designer',
    'company': 'Google Inc.',
    'location': 'California, USA',
    'salary': '\$15K',
    'salaryPeriod': '/month',
    'jobType': 'Full time',
    'description': 'Design user interfaces and experiences for Google products.',
    'requirements': ['3+ years of experience', 'UI/UX skills', 'Communication skills'],
    'workplaceType': 'Hybrid',
  };

  @override
  void onInit() {
    super.onInit();
    fetchRecentJobs();
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }

  Future<void> fetchRecentJobs() async {}

  void navigateToJobDetail() {
    Get.to(() => HomeDetailPage());
  }
}
