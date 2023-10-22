import 'package:get/get.dart';

class BookingController extends GetxController {
  RxInt groupvalue = 0.obs;

  RxInt duration = 0.obs;

  void changegroupvalue(int value) {
    groupvalue.value = value;
    update();
  }

  void getduration(int durint) {
    duration.value = durint;

    update();
  }
}
