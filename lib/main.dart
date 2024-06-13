import 'dart:io';
import 'package:flutter/material.dart';
import 'package:my_get_http_architecture/app/services/local_storage.dart';
import 'package:my_get_http_architecture/presentation/app.dart';

void main() {

  HttpOverrides.global = MyHttpOverrides();

  LocalStorageService.instance.init();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const CaseTracker());
}


class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
