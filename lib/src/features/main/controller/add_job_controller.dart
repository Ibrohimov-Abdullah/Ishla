import 'package:get/get.dart';

class AddJobController extends GetxController {
  var position = ''.obs;
  var workplaceType = ''.obs;
  var location = ''.obs;
  var company = ''.obs;
  var employmentType = ''.obs;
  var description = ''.obs;

  void updatePosition(String value) => position.value = value;
  void updateWorkplaceType(String value) => workplaceType.value = value;
  void updateLocation(String value) => location.value = value;
  void updateCompany(String value) => company.value = value;
  void updateEmploymentType(String value) => employmentType.value = value;
  void updateDescription(String value) => description.value = value;

  void postJob() {
    Get.snackbar('Success', 'Job posted successfully');
    Get.back();
  }
}