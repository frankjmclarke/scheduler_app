 import 'package:cloud_firestore/cloud_firestore.dart';

class Appointment {
  final String url;
  final String phone;
  final DateTime date;
  final String description;
  String status;
  final num rent;

  final String? id;

  Appointment(
      {required this.url, required this.phone, required this.date, required this.description, required this.rent, required this.status, required this.id});

  factory Appointment.fromJson(Map<String, dynamic> json) {
    return Appointment(
        url: json['url'],
        phone: json['phone'],
        date: (json['date']).toDate(),
        description: json['description'],
        rent: json['rent'],
        status: json['status'],
        id: json['id']);
  }
  
  toJson() {
    return {
      'url': url,
      'phone': phone,
      'date': Timestamp.fromDate(date),
      'rent': rent,
      'status': status,
      'id': id
    };
  }
}
