import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/home/views/profile_view.dart';
import 'package:myapp/app/modules/home/views/home_view.dart'; // Memanggil HomeView
import 'package:myapp/app/page/home_page.dart'; // Memanggil HomePage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(), // Mengatur HomeView sebagai halaman awal
      getPages: [
        GetPage(name: '/', page: () => HomeView()), // Home page
        GetPage(name: '/profile', page: () => ProfileView()), // Profile page
        GetPage(name: '/medic', page: () => HomePage()), // Halaman Medic
      ],
    );
  }
}
