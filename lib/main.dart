import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/ChatPage.dart';
import 'package:whatsapp/Screens/HomePage.dart';
import 'package:whatsapp/Screens/SampleData.dart';
import 'package:whatsapp/Screens/UsersList.dart';
import 'package:whatsapp/Utils/AppColors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.white,
        appBarTheme:const AppBarTheme(
          color: AppColor.tealGreen
        )
      ),
      routes: {
        "/":(context)=>const HomePage(),
      },
    );
  }
}
