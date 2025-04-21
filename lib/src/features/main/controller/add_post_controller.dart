import 'package:get/get.dart';
import 'package:ishla/src/features/auth/view/pages/login_page.dart';
import 'package:ishla/src/features/main/view/pages/job_post_page.dart';

import '../view/pages/add_job_page.dart';

class AddPostController extends GetxController {
  var postTitle = ''.obs;
  var postDescription = ''.obs;

  void updatePostTitle(String value) => postTitle.value = value;
  void updatePostDescription(String value) => postDescription.value = value;

  void navigateToPostPage() {
    Get.back(); // Close the bottom sheet
    Get.to(() => AddPostPage());
  }

  void navigateToAddJob() {
    Get.back(); // Close the bottom sheet
    Get.to(() => AddJobPage());
  }

  navigateToLogin(){
    Get.back(); // Close the bottom sheet
    Get.to(() => LoginPage());
  }
}