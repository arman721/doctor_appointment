import 'package:doc/assets/models/packages.dart';
import 'package:doc/controller/bookingcontroller.dart';
import 'package:doc/pages/fourthscreen.dart';
import 'package:doc/pages/secondscrren.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdScreen extends StatelessWidget {
  ThirdScreen({super.key});
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
              Get.to(SecondScrren());
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            )),
        title: Text(
          'Review Summary',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: NetworkImage(
                            "${bookingController.doc_list[bookingController.doctorindex.value].image}"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${bookingController.doc_list[bookingController.doctorindex.value].doctorName}",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              "${bookingController.doc_list[bookingController.doctorindex.value].speciality}",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(141, 48, 24, 24)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${bookingController.doc_list[bookingController.doctorindex.value].location}",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromARGB(141, 48, 24, 24)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Divider(
              thickness: 2,
            ),
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Date and Hour",
                          style: TextStyle(
                              fontSize: 22,
                              color: Color.fromARGB(82, 21, 17, 17)),
                        ),
                        Text(
                          "date",
                          style: TextStyle(
                              fontSize: 25,
                              color: const Color.fromARGB(255, 57, 56, 56)),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Package",
                          style: TextStyle(
                              fontSize: 22,
                              color: const Color.fromARGB(82, 0, 0, 0)),
                        ),
                        Text(
                          "${package.packages[bookingController.packagevalue.value]}",
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Duration",
                          style: TextStyle(
                              fontSize: 22,
                              color: const Color.fromARGB(82, 0, 0, 0)),
                        ),
                        Text(
                          "${package.duration[bookingController.duration.value]}",
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Booking for",
                          style: TextStyle(
                              fontSize: 22,
                              color: const Color.fromARGB(82, 0, 0, 0)),
                        ),
                        Text(
                          "Self",
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        )
                      ],
                    ),
                  ],
                )),
            Expanded(flex: 4, child: Container()),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  Get.to(FourthScreen());
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 17, 139, 239),
                      borderRadius: BorderRadius.circular(30)),
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "Confirm",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
