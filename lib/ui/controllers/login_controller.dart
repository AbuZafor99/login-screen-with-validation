import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/models/login_model.dart';
import '../widgets/snack_bar.dart';

class LoginController extends GetxController {
  final loginModel = LoginModel().obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    emailController.text = 'test@example.com';
    passwordController.text = 'Password123';
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    final emailRegex = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number';
    }
    return null;
  }

  void login() async {
    final context = Get.context;
    if (context == null) return;

    if (validateEmail(emailController.text) == null &&
        validatePassword(passwordController.text) == null) {
      loginModel.value.email = emailController.text;
      loginModel.value.password = passwordController.text;

      isLoading.value = true;
      await Future.delayed(const Duration(seconds: 2));
      isLoading.value = false;

      CustomSnackBar.show(
        context,
        'Successful!',
        'You have been logged in.',
      );
    }
  }
}
