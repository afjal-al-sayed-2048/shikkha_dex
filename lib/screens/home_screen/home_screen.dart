
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shikkha_dex/components/main_appbar.dart';
import 'package:shikkha_dex/data/list_screen_items_list.dart';
import 'package:shikkha_dex/models/home_screen_lsit_model.dart';
import 'package:shikkha_dex/screens/home_screen/components/home_screen_list_tile.dart';
import 'package:shikkha_dex/utils/constants.dart';

class HomeScreen extends StatelessWidget {

  List<HomeScreenListItem> homeScreenListItems = [
    HomeScreenListItem(
      title: "mKj cvewjK I †evW© cix¶vi djvdj",
      titleUnicode: "সকল পাবলিক ও বোর্ড পরীক্ষার ফলাফল",
      icon: "home_result_logo.png",
      subList: ListScreenItemsList.resultList
    ),
    HomeScreenListItem(
      title: "wk¶v gš¿Yvjq Ges Gi Awab¯’ wefvM I Awa`ßi mg~‡ni I‡qemvBU",
      titleUnicode: "শিক্ষা মন্ত্রণালয় এবং এর অধিনস্থ বিভাগ ও অধিদপ্তর সমূহের ওয়েবসাইট",
      icon: "home_division_logo.png",
      subList: ListScreenItemsList.divisionList
    ),
    HomeScreenListItem(
      title: "evsjv‡`‡ki mKj wk¶v‡ev‡W©i I‡qemvBU mg~n",
      titleUnicode: "বাংলাদেশের সকল শিক্ষাবোর্ডের ওয়েবসাইট সমূহ",
      icon: "home_board_logo.png",
      subList: ListScreenItemsList.boardList
    )
  ];

  final double contentPadding = 8.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(CONSTANTS.APP_NAME),
      body: ListView.builder(
          itemCount: homeScreenListItems.length,
          itemBuilder: (itemContext, itemIndex){
            if(itemIndex == 0){
              return Column(
                children: [
                  SizedBox(
                    height: contentPadding,
                  ),
                  HomeScreenListTile(item: homeScreenListItems[itemIndex])
                ],
              );
            }else if(itemIndex == homeScreenListItems.length - 1){
              return Column(
                children: [
                  HomeScreenListTile(item: homeScreenListItems[itemIndex]),
                  SizedBox(
                    height: contentPadding,
                  ),
                ],
              );
            }
            return HomeScreenListTile(item: homeScreenListItems[itemIndex]);
          }
      ),
    );
  }
}
