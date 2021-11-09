import 'package:flutter/material.dart';
import 'package:shikkha_dex/models/home_screen_lsit_model.dart';
import 'package:shikkha_dex/routes/main_routes.dart';

class HomeScreenListTile extends StatelessWidget {

  final HomeScreenListItem item;

  HomeScreenListTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
      child: Card(
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(
              context,
              MainRoutes.LIST_SCREEN,
              arguments: item
            );
          },
          child: Container(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                      flex: 2,
                      child: AspectRatio(
                          aspectRatio: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/${item.icon}"),
                          )
                      )
                  ),
                  Flexible(
                      flex: 3,
                      fit: FlexFit.tight,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 24.0),
                        child: Text(
                          item.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "SutonnyMJ",
                            fontSize: 24.0,
                            height: 1.1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
