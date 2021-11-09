import 'package:shikkha_dex/models/list_screen_sub_list_model.dart';

class HomeScreenListItem{

  final String title;
  final String titleUnicode;
  final String icon;
  final List<ListScreenSubListItem> subList;

  HomeScreenListItem({
    required this.title,
    required this.icon,
    required this.titleUnicode,
    required this.subList
  });

}