import 'dart:io';

import 'package:chat_app/presentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
Future<String?> myLocalIp() async {
  final interfaces = await NetworkInterface.list(
      type: InternetAddressType.IPv4, includeLinkLocal: true);
  final ips = interfaces
      .where((e) => e.addresses.first.address.indexOf('192.') == 0)
      .toList();
  for (var element in ips) {
    print(element.addresses.first.address);
  }
}
