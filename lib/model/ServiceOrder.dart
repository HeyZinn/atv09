import 'dart:developer';

import 'package:flutter/material.dart';

class ServiceOrder {
  final String id;
  final String cliente;
  final String status;
  final String desc;

  ServiceOrder({
    required this.id,
    required this.cliente,
    required this.status,
    required this.desc,
  });

  factory ServiceOrder.fromJson(Map<String, String> json){
    return ServiceOrder(
    id: json['id'] ?? '',
    cliente: json['client'] ?? '',
    status: json['status'] ?? '',
    desc: json['desc'] ?? '',
  );
 }

 @override
 String toString() => 'ServiceOrder(id: $id, client: $cliente, status: $status)';

}