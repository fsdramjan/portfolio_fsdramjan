import 'package:flutter/material.dart';
import 'package:fsdramjan/src/service/webHeaderText.dart';
import 'package:fsdramjan/src/view/components/slider/sliderComponent.dart';

class DesktopDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebHeaderTabTextService(
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('Desktop'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            primary: false,
            children: [
              SizedBox(height: 200, child: SliderComponent()),
              ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 5,
                  itemBuilder: (c, i) {
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onTap: () {},
                        tileColor: Colors.red,
                        leading: Text('Q'),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
      headerText: 'Fsd Ramjan',
    );
  }
}
