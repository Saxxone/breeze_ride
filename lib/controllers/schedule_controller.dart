import 'package:breeze_ride/controllers/user_controller.dart';
import 'package:get/get.dart' as getx;
import 'package:dio/dio.dart';

class ScheduleController extends getx.GetxController {
  final UserController userController = getx.Get.put(UserController());
  List schedules = [].obs;
  var dio = Dio();

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
      print(e);
      return [];
    }
  }
}
