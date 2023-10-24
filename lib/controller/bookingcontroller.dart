import 'dart:convert';

import 'package:doc/assets/models/booking_confirm.dart';
import 'package:doc/assets/models/doc_list.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../assets/models/my_appointment.dart';

class BookingController extends GetxController {
  var my_appointments = <MyAppointment>[].obs;
  var doc_list = <DocList>[].obs;
  var booking_confirm = <BookingConfirmation>[].obs;
  RxInt doctorindex = 0.obs;
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
    update();
  }

  @override
  void onInit() {
    loadmyappointment();
    loaddoclist();
    loadconfirmation();
  }

  Future loadmyappointment() async {
    var myappointmentJson =
        await rootBundle.loadString("lib/assets/models/my_appointment.json");
    final decodedlist = jsonDecode(myappointmentJson);
    var listapp = List.from(decodedlist)
        .map<MyAppointment>((item) => MyAppointment.fromJson(item))
        .toList();

    my_appointments.value = listapp;
  }

  Future loaddoclist() async {
    var docListJson =
        await rootBundle.loadString("lib/assets/models/doc_list.json");
    final decodedlist = jsonDecode(docListJson);
    var listdoc = List.from(decodedlist)
        .map<DocList>((item) => DocList.fromJson(item))
        .toList();

    doc_list.value = listdoc;
    print(doc_list);
  }

  Future loadconfirmation() async {
    var conListJson =
        await rootBundle.loadString("lib/assets/models/booking_confirm.json");
    final decodedlist = jsonDecode(conListJson);
    var bookingconf = List.from(decodedlist)
        .map<BookingConfirmation>((item) => BookingConfirmation.fromJson(item))
        .toList();

    booking_confirm.value = bookingconf;
    print(booking_confirm[0].appointmentDate);
  }
}
