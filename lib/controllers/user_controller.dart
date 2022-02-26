import 'package:dio/dio.dart';
import 'package:get/get.dart' as getx;



class UserController extends getx.GetxController {
  Map user = {}.obs;
  var token = "".obs;
  var dio = Dio();
  var isLoading = false.obs;

  login(data) async {
    isLoading.value = true;
    Response response;
    try {
      response = await dio.post(
        'http://10.0.2.2:3000/auth/login',
        data: data,
        options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          },
        ),
      );
      isLoading.value = false;
      if (response.statusCode == 201) {
        token.value = response.data['access_token'];
        // getx.Get.to(() => Home());
      }
    } catch (e) {
      isLoading.value = false;
      print(e);
    }
  }

  getUser() {}
}
