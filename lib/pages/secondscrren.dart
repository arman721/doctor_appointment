import 'package:doc/pages/firstscreen.dart';
import 'package:doc/pages/thirdscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScrren extends StatelessWidget {
  const SecondScrren({super.key});
  @override
  Widget build(BuildContext context) {
    int groupvalue = 1;
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
                      height: 60,
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
                    Card(
                      child: ListTile(
                        leading: Image.asset("lib/assets/images/message.jpeg"),
                        title: Text(
                          "Messaging",
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Text("Chat with doctor"),
                        trailing: Radio(
                            value: 1,
                            groupValue: groupvalue,
                            onChanged: (val) {
                              groupvalue = val!;
                            }),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Image.asset("lib/assets/images/voice.jpeg"),
                        title: Text(
                          "Voice Call",
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Text("voice call with doctor with doctor"),
                        trailing: Radio(
                            value: 2,
                            groupValue: groupvalue,
                            onChanged: (val) {
                              groupvalue = val!;
                            }),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Image.asset("lib/assets/images/message.jpeg"),
                        title: Text(
                          "Video Call",
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Text("Video Call with doctor"),
                        trailing: Radio(
                            value: 3,
                            groupValue: groupvalue,
                            onChanged: (val) {
                              groupvalue = val!;
                            }),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Image.asset("lib/assets/images/person.jpeg"),
                        title: Text(
                          "In Person",
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Text("In Person visit with doctor"),
                        trailing: Radio(
                            value: 4,
                            groupValue: groupvalue,
                            onChanged: (val) {
                              groupvalue = val!;
                            }),
                      ),
                    ),
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
