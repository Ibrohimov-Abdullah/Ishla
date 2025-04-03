import 'package:get/get.dart';

import '../view/pages/add_job_page.dart';

class AddPostController extends GetxController {
  var postTitle = ''.obs;
  var postDescription = ''.obs;

  void updatePostTitle(String value) => postTitle.value = value;
  void updatePostDescription(String value) => postDescription.value = value;

  void navigateToAddJob() {
    Get.back(); // Close the bottom sheet
    Get.to(() => AddJobPage());
  }
}