import 'package:doc/pages/firstscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

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
                  Get.to(FirstScrren());
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30,
                )),
            title: Text(
              'My Bookings',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            actions: [
              Icon(
                Icons.search_rounded,
                color: Colors.black,
                size: 40,
              )
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView.separated(
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        elevation: 2,
                        child: Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 226, 223, 223)),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          height: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Aug 25,2023-10:10 AM",
                                style: TextStyle(fontSize: 22),
                              ),
                              Divider(
                                thickness: 2,
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Container(
                                      height: 100,
                                      width: 100,
                                      child: Image.asset(
                                          "lib/assets/images/doc.jpg")),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Dr.Jenny William",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                              height: 20,
                                              "lib/assets/images/loc.jpg"),
                                          Text(
                                            "location",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.book),
                                          Text(
                                            "Booking Id:",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(182, 220, 252, 1),
                                        borderRadius:
                                            BorderRadius.circular(35)),
                                    height: 50,
                                    width: 130,
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.blue),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(35)),
                                    height: 50,
                                    width: 150,
                                    child: Text(
                                      "Reschedule",
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.white),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 20);
                    },
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
