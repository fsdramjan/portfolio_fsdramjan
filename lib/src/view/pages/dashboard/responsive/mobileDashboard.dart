import 'package:flutter/material.dart';
import 'package:fsdramjan/src/service/webHeaderText.dart';
import 'package:fsdramjan/src/view/widgets/card/cardWidget.dart';

class MobileDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebHeaderTabTextService(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            primary: false,
            children: [
              CardWidget(
                child: ListTile(
                  leading: CardWidget(
                    child: Icon(
                      Icons.person,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      headerText: 'Fsd Ramjan',
    );
  }
}
