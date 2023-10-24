// To parse this JSON data, do
//
//     final bookingConfirmation = bookingConfirmationFromJson(jsonString);

import 'dart:convert';

List<BookingConfirmation> bookingConfirmationFromJson(String str) =>
    List<BookingConfirmation>.from(
        json.decode(str).map((x) => BookingConfirmation.fromJson(x)));

String bookingConfirmationToJson(List<BookingConfirmation> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BookingConfirmation {
  String doctorName;
  DateTime appointmentDate;
  String appointmentTime;
  String location;
  String appointmentPackage;

  BookingConfirmation({
    required this.doctorName,
    required this.appointmentDate,
    required this.appointmentTime,
    required this.location,
    required this.appointmentPackage,
  });

  factory BookingConfirmation.fromJson(Map<String, dynamic> json) =>
      BookingConfirmation(
        doctorName: json["doctor_name"],
        appointmentDate: DateTime.parse(json["appointment_date"]),
        appointmentTime: json["appointment_time"],
        location: json["location"],
        appointmentPackage: json["appointment_package"],
      );

  Map<String, dynamic> toJson() => {
        "doctor_name": doctorName,
        "appointment_date":
            "${appointmentDate.year.toString().padLeft(4, '0')}-${appointmentDate.month.toString().padLeft(2, '0')}-${appointmentDate.day.toString().padLeft(2, '0')}",
        "appointment_time": appointmentTime,
        "location": location,
        "appointment_package": appointmentPackage,
      };
}
