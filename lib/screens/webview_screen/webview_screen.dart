import 'package:flutter/material.dart';
import 'package:shikkha_dex/components/main_appbar.dart';
import 'package:shikkha_dex/models/list_screen_sub_list_model.dart';

class WebViewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final parentItem = ModalRoute.of(context)!.settings.arguments as ListScreenSubListItem;
    final url = parentItem.url;

    return Scaffold(
      appBar: mainAppBar("title"),
    );

  }
}
