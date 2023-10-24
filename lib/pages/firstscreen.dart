import 'package:doc/controller/bookingcontroller.dart';
import 'package:doc/pages/secondscrren.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScrren extends StatelessWidget {
  FirstScrren({super.key});

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
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30,
                  )),
              title: Text(
                'Book Appointment',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
            body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 50,
                                      backgroundImage: NetworkImage(
                                          "${bookingController.doc_list[bookingController.doctorindex.value].image}"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${bookingController.doc_list[bookingController.doctorindex.value].doctorName}",
                                            style: TextStyle(fontSize: 25),
                                          ),
                                          Text(
                                            "${bookingController.doc_list[bookingController.doctorindex.value].speciality}",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    141, 48, 24, 24)),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "${bookingController.doc_list[bookingController.doctorindex.value].location}",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Color.fromARGB(
                                                    141, 48, 24, 24)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Divider(
                                  thickness: 2,
                                ),
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Counter(
                                      count: bookingController
                                          .doc_list[bookingController
                                              .doctorindex.value]
                                          .patientsServed,
                                      info: "Patients",
                                      im: "patients")),
                              Expanded(
                                  flex: 1,
                                  child: Counter(
                                      count: bookingController
                                          .doc_list[bookingController
                                              .doctorindex.value]
                                          .yearsOfExperience,
                                      info: "Year Exp",
                                      im: "exp")),
                              Expanded(
                                  flex: 1,
                                  child: Counter(
                                      count: bookingController
                                          .doc_list[bookingController
                                              .doctorindex.value]
                                          .rating,
                                      info: "Rating",
                                      im: "rating")),
                              Expanded(
                                  flex: 1,
                                  child: Counter(
                                      count: bookingController
                                          .doc_list[bookingController
                                              .doctorindex.value]
                                          .numberOfReviews,
                                      info: "Review",
                                      im: "review")),
                            ],
                          )),
                      Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Book Appointment",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(141, 48, 24, 24)),
                              ),
                              Text(
                                "Day",
                                style: TextStyle(fontSize: 25),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              GetBuilder<BookingController>(
                                  builder: (bookingController) {
                                return Container(
                                  height: 60,
                                  child: ListView.separated(
                                    itemCount: bookingController
                                        .doc_list[
                                            bookingController.doctorindex.value]
                                        .availability
                                        .length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return InkWell(
                                        onTap: () {
                                          bookingController.getdate(index);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 100,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: index ==
                                                      bookingController
                                                          .date.value
                                                  ? Colors.blueAccent
                                                  : Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      96, 108, 106, 106)),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "${bookingController.doc_list[bookingController.doctorindex.value].availability.entries.first.key}",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: index ==
                                                          bookingController
                                                              .date.value
                                                      ? Colors.white
                                                      : Colors.black,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 2,
                                              ),
                                              Text(
                                                "Date",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: index ==
                                                          bookingController
                                                              .date.value
                                                      ? Colors.white
                                                      : Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                        width: 10,
                                      );
                                    },
                                  ),
                                );
                              }),
                            ],
                          )),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Time",
                              style: TextStyle(fontSize: 25),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GetBuilder<BookingController>(
                                builder: (bookingController) {
                              return Container(
                                height: 60,
                                child: ListView.separated(
                                  itemCount: bookingController
                                      .doc_list[
                                          bookingController.doctorindex.value]
                                      .availability
                                      .entries
                                      .first
                                      .key
                                      .length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return InkWell(
                                      onTap: () {
                                        bookingController.gettime(index);
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 100,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: index ==
                                                    bookingController.time.value
                                                ? Colors.blueAccent
                                                : Colors.white,
                                            border: Border.all(
                                                color: const Color.fromARGB(
                                                    96, 108, 106, 106)),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "${bookingController.doc_list[bookingController.doctorindex.value].availability.entries}"
                                                  .replaceAll('-', '/'),
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: index ==
                                                        bookingController
                                                            .time.value
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                      width: 10,
                                    );
                                  },
                                ),
                              );
                            }),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              Get.to(SecondScrren());
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Text(
                                'Make Appointment',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                            ),
                          )),
                    ]))));
  }
}

class Counter extends StatefulWidget {
  const Counter(
      {super.key, required this.count, required this.info, required this.im});
  final count;
  final String info;
  final String im;

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "lib/assets/images/${widget.im}.jpg",
          height: 50,
        ),
        Text(
          "${widget.count}+",
          style: TextStyle(
              color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Text(
          "${widget.info}",
          style:
              TextStyle(fontSize: 20, color: Color.fromARGB(141, 48, 24, 24)),
        )
      ],
    );
  }
}
