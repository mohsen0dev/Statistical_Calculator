import 'package:get/get.dart';

class CustomAppbarController extends GetxController {
  RxInt selectedSection = 0.obs;
  void selectedOpration(int selected) {
    selectedSection = RxInt(selected);
    print(selected);
  }
}
