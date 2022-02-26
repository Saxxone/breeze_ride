import 'package:breeze_ride/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as getx;
import 'package:dio/dio.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

class ScheduleController extends getx.GetxController {
  final UserController userController = getx.Get.put(UserController());
  List schedules = [].obs;
  var dio = Dio();

  var isLoading = false.obs;
  var errorMessage = "".obs;

  Future<List> getSchedules() async {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        print(userController.token.value);
        options.headers["authorization"] =
            "Bearer ${userController.token.value}";
      },
    ));
    Response response;
    try {
      response = await Dio().get('http://10.0.2.2:3000/schedule/all',
          options: Options(
            headers: {
              'Authorization': "Bearer ${userController.token.value}",
            },
          ));
      return response.data;
    } on DioError catch (e) {
      isLoading.value = false;
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
        return [];
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
        return [];
      }
    } catch (e) {
      isLoading.value = false;
      getx.Get.snackbar(
        "An unknown error occurred",
        'Reload and try again',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        borderRadius: 4,
        barBlur: 0,
      );
      return [];
    }
  }
}
