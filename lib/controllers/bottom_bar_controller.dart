import 'package:breeze_ride/controllers/user_controller.dart';
import 'package:get/get.dart' as getx;
import '../home.dart';
import 'package:dio/dio.dart';
import 'package:breeze_ride/controllers/user_controller.dart' as user;

class BottomBarController extends getx.GetxController {
  var index = 0.obs;
  final UserController userController = getx.Get.put(UserController());
  var dio = Dio();
  var ticketData = {}.obs;

  void navigateToScreen(selectedIndex) {
    if (selectedIndex == 0) {
      getx.Get.to(() => Home());
    } else {
      index.value = selectedIndex;
    }
  }

  makeBooking(data) async {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers["authorization"] =
            "Token ${userController.token.value}";
      },
    ));
    Response response;
    response = await Dio().post('http://10.0.2.2:3000/trips/book-trip',
        data: data,
        options: Options(
          headers: {
            'Authorization': "Bearer ${userController.token.value}",
          },
        ));
    if (response.statusCode == 201) {
      ticketData.value = response.data['trip_data'];
      navigateToScreen(4);
    }
    return response.data;
  }
}
