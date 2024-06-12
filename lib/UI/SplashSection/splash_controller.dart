import 'package:get/get.dart';
class SplashController extends GetxController {
  moveToNext() async {
    await Future.delayed(3.seconds);


  }

  @override
  onInit() {
    moveToNext();
    super.onInit();
  }
}
