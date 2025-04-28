import 'package:get/get.dart';
import 'package:ishla/src/core/storage/app_storage.dart';
import 'package:ishla/src/features/auth/view/pages/login_page.dart';
import 'package:ishla/src/features/main/view/pages/job_post_page.dart';
import 'package:ishla/src/features/main/view/pages/main_page.dart';

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

  void navigateToAddJob() async{
    String? info = await AppStorage.load(key: StorageKey.isUserHave);

    Get.back(); // Close the bottom sheet
    Get.to(() => AddJobPage());
    info != null ? Get.to(AddJobPage()) :Get.to(() => LoginPage());

  }

  navigateToLogin()async{
    String? info = await AppStorage.load(key: StorageKey.isUserHave);
    Get.back(); // Close the bottom sheet
    info != null ? Get.to(AddPostPage()) :Get.to(() => LoginPage());
  }
}