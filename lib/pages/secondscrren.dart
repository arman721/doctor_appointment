import 'package:doc/assets/models/packages.dart';
import 'package:doc/controller/cont.dart';
import 'package:doc/pages/firstscreen.dart';
import 'package:doc/pages/thirdscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScrren extends StatelessWidget {
  SecondScrren({super.key});
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
              Get.to(FirstScrren());
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            )),
        title: Text(
          'Select Package',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Select Duration",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      height: 60,
                      width: Get.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() => Text(
                                "${package.duration[bookingController.duration.value]}",
                                style: TextStyle(fontSize: 25),
                              )),
                          IconButton(
                              onPressed: () {
                                Get.defaultDialog(
                                    title: "Select Duration",
                                    content: Column(
                                      children: [
                                        TextButton(
                                            onPressed: () {
                                              bookingController.getduration(0);
                                              Get.back();
                                            },
                                            child:
                                                Text("${package.duration[0]}")),
                                        TextButton(
                                            onPressed: () {
                                              bookingController.getduration(1);
                                              Get.back();
                                            },
                                            child:
                                                Text("${package.duration[1]}")),
                                      ],
                                    )
                                    // content: GetBuilder<BookingController>(
                                    //     builder: (bookingController) {
                                    //   return Container(
                                    //     height: 100,
                                    //     child: ListView.builder(
                                    //       itemCount: package.duration.length,
                                    //       itemBuilder:
                                    //           (BuildContext context, int index) {
                                    //         return TextButton(
                                    //             onPressed: () {
                                    //               bookingController.getduration(
                                    //                   package.duration[index]);
                                    //             },
                                    //             child: Text(
                                    //                 "${package.duration[index]}"));
                                    //       },
                                    //     ),
                                    //   );
                                    // }),
                                    );
                              },
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.blue,
                                size: 40,
                              ))
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(95, 149, 144, 144)),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ],
                )),
            Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Select Pakage",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: GetBuilder<BookingController>(
                            builder: (controller) {
                          return ListView.builder(
                            itemCount: package.packages.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                child: ListTile(
                                  leading: Image.asset(
                                      "lib/assets/images/${package.packages[index]}.jpeg"),
                                  title: Text(
                                    "${package.packages[index]}",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  subtitle: Text(
                                      "${package.packages[index]} with doctor"),
                                  trailing: Radio(
                                      value: index,
                                      groupValue: controller.groupvalue.value,
                                      onChanged: (val) {
                                        controller.changegroupvalue(val!);
                                      }),
                                ),
                              );
                            },
                          );
                        }),
                      ),
                    ),
                    // Obx(
                    //   () => Card(
                    //     child: ListTile(
                    //       leading:
                    //           Image.asset("lib/assets/images/message.jpeg"),
                    //       title: Text(
                    //         "Messaging",
                    //         style: TextStyle(fontSize: 20),
                    //       ),
                    //       subtitle: Text("Messaging with doctor"),
                    //       trailing: Radio(
                    //           value: 0,
                    //           groupValue: bookingController.groupvalue.value,
                    //           onChanged: (val) {
                    //             bookingController.changegroupvalue(val!);
                    //           }),
                    //     ),
                    //   ),
                    // ),
                    // Obx(
                    //   () => Card(
                    //     child: ListTile(
                    //       leading: Image.asset("lib/assets/images/voice.jpeg"),
                    //       title: Text(
                    //         "Voice Call",
                    //         style: TextStyle(fontSize: 20),
                    //       ),
                    //       subtitle: Text("voice call with doctor with doctor"),
                    //       trailing: Radio(
                    //           value: 1,
                    //           groupValue: bookingController.groupvalue.value,
                    //           onChanged: (val) {
                    //             bookingController.changegroupvalue(val!);
                    //           }),
                    //     ),
                    //   ),
                    // ),
                    // Obx(
                    //   () => Card(
                    //     child: ListTile(
                    //       leading:
                    //           Image.asset("lib/assets/images/message.jpeg"),
                    //       title: Text(
                    //         "Video Call",
                    //         style: TextStyle(fontSize: 20),
                    //       ),
                    //       subtitle: Text("Video Call with doctor"),
                    //       trailing: Radio(
                    //           value: 2,
                    //           groupValue: bookingController.groupvalue.value,
                    //           onChanged: (val) {
                    //             bookingController.changegroupvalue(val!);
                    //           }),
                    //     ),
                    //   ),
                    // ),
                    // Obx(
                    //   () => Card(
                    //     child: ListTile(
                    //       leading: Image.asset("lib/assets/images/person.jpeg"),
                    //       title: Text(
                    //         "In Person",
                    //         style: TextStyle(fontSize: 20),
                    //       ),
                    //       subtitle: Text("In Person visit with doctor"),
                    //       trailing: Radio(
                    //           value: 3,
                    //           groupValue: bookingController.groupvalue.value,
                    //           onChanged: (val) {
                    //             bookingController.changegroupvalue(val!);
                    //           }),
                    //     ),
                    //   ),
                    // ),
                  ],
                )),
            InkWell(
              onTap: () {
                Get.to(ThirdScreen());
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
