// login_controller.dart
import 'package:get/get.dart';

class LoginController extends GetxController {
  var rememberMe = false.obs;
  var isPasswordVisible = false.obs;

  void toggleRememberMe(bool? value) {
    rememberMe.value = value ?? false;
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}