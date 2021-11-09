import 'package:flutter/material.dart';
import 'package:shikkha_dex/routes/main_routes.dart';
import 'package:shikkha_dex/screens/home_screen/home_screen.dart';
import 'package:shikkha_dex/screens/list_screen/list_screen.dart';
import 'package:shikkha_dex/screens/webview_screen/webview_screen.dart';
import 'package:shikkha_dex/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: CONSTANTS.APP_NAME,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      routes: {
        MainRoutes.HOME_SCREEN: (context) => HomeScreen(),
        MainRoutes.LIST_SCREEN: (context) => ListScreen(),
        MainRoutes.WEBVIEW_SCREEN: (context) => WebViewScreen()
      },
      initialRoute: MainRoutes.HOME_SCREEN,
    );
  }
}


