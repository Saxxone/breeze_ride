import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as getx;
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

import '../home.dart';

class UserController extends getx.GetxController {
  Map user = {}.obs;
  var token = "".obs;
  var dio = Dio();
  var isLoading = false.obs;
  var isError = false.obs;
  var isValid = false.obs;
  var errorMessage = "".obs;

  login(data, _formKey) async {
    isError.value = false;
    isValid.value = _formKey.currentState!.validate();

    if (isValid.value) {
      isLoading.value = true;
      Response response;
      try {
        response = await dio.post(
          'http://10.0.2.2:3000/auth/login',
          data: data,
          options: Options(
            followRedirects: false,
            validateStatus: (status) {
              return status! < 400;
            },
          ),
        );
        isLoading.value = false;
        if (response.statusCode == 201) {
          token.value = response.data['access_token'];
          getx.Get.to(() => Home());
        }
      } on DioError catch (e) {
        isLoading.value = false;
        isError.value = true;
        if (e.response != null) {
          errorMessage.value = e.response?.data['message'];
          getx.Get.snackbar(
            "An error occurred",
              errorMessage.value,
            backgroundColor: Colors.red,
            colorText: Colors.white,
            snackPosition: SnackPosition.BOTTOM,
            borderRadius: 4,
            barBlur: 0,
          );

        } else {
          getx.Get.snackbar(
            "An error occurred",
            e.message,
            backgroundColor: Colors.red,
            colorText: Colors.white,
            snackPosition: SnackPosition.BOTTOM,
            borderRadius: 4,
            barBlur: 0,
          );
        }
      } catch (e) {
        isLoading.value = false;
        isError.value = true;
        getx.Get.snackbar(
          "An unknown error occurred",
          'Reload and try again',
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
          borderRadius: 4,
          barBlur: 0,
        );
      }
    }
  }

  getUser() {}
}
