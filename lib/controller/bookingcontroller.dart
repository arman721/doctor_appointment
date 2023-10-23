import 'package:get/get.dart';

class BookingController extends GetxController {
  RxInt packagevalue = 0.obs;
  RxInt duration = 0.obs;
  RxInt date = 0.obs;
  RxInt time = 0.obs;

  void changegroupvalue(int value) {
    packagevalue.value = value;
    update();
  }

  void getduration(int durint) {
    duration.value = durint;
    update();
  }

  void getdate(int dat) {
    date.value = dat;
    update();
  }

  void gettime(int tim) {
    time.value = tim;
    print("${time.value}");
    update();
  }
}
