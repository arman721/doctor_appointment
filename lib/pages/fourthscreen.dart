import 'package:doc/controller/bookingcontroller.dart';
import 'package:doc/pages/fithscreen.dart';
import 'package:doc/pages/thirdscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class FourthScreen extends StatelessWidget {
  FourthScreen({super.key});
  final BookingController bookingController = Get.put(BookingController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Get.to(ThirdScreen());
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            )),
        title: const Text(
          'Confirmation',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          const Expanded(flex: 1, child: SizedBox()),
          Expanded(
              flex: 2,
              child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "lib/assets/images/ap_done.jpg",
                    height: 100,
                  ))),
          Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Appointment Confirmed!",
                    style: TextStyle(fontSize: 28),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "You have successfully booked appointment with",
                    style: TextStyle(fontSize: 15, color: Colors.black38),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${bookingController.booking_confirm[0].doctorName}",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              )),
          Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(22),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.deepPurple,
                          size: 25,
                        ),
                        Text(
                          "${bookingController.booking_confirm[0].location}",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_month,
                              color: Colors.deepPurple,
                              size: 25,
                            ),
                            Text(
                              "${DateFormat('d MMMy').format(bookingController.booking_confirm[0].appointmentDate)}",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.alarm,
                              color: Colors.deepPurple,
                              size: 25,
                            ),
                            Text(
                              "${bookingController.booking_confirm[0].appointmentTime.substring(0, 8)}",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
          Expanded(flex: 2, child: SizedBox()),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(left: 30, right: 30, bottom: 10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 17, 139, 239),
                          borderRadius: BorderRadius.circular(30)),
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Get.to(FifthScreen());
                          },
                          child: Text(
                            "View Appointment",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Book Another",
                        style: TextStyle(color: Colors.blue, fontSize: 25),
                      ))
                ],
              )),
        ],
      ),
    ));
  }
}
