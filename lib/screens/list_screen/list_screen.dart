import 'package:flutter/material.dart';
import 'package:shikkha_dex/components/main_appbar.dart';
import 'package:shikkha_dex/models/home_screen_lsit_model.dart';
import 'package:shikkha_dex/routes/main_routes.dart';

class ListScreen extends StatelessWidget {

  //final HomeScreenListItem item;

  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final parentItem = ModalRoute.of(context)!.settings.arguments as HomeScreenListItem;
    final list = parentItem.subList;

    return Scaffold(
      appBar: mainAppBar(parentItem.title),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (itemContext, itemIndex){
          EdgeInsets padding = EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0);
          if(itemIndex == 0) padding = EdgeInsets.only(top: 16.0, bottom: 6.0, right: 16.0, left: 16.0);
          else if(itemIndex == list.length - 1) padding = EdgeInsets.only(top: 6.0, bottom: 16.0, right: 16.0, left: 16.0);
          return Padding(
            padding: padding,
            child: Card(
              child: ListTile(
                onTap: (){
                  Navigator.pushNamed(
                      context,
                      MainRoutes.WEBVIEW_SCREEN,
                      arguments: list[itemIndex]
                  );
                },
                title: Text(
                    list[itemIndex].title,
                  style: TextStyle(
                    fontFamily: "SutonnyMJ",
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    height: 1.1
                  )
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
