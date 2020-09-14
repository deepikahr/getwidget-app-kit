import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/cupertino.dart';

class CheckBoxListTilePage extends StatefulWidget {
  @override
  _CheckBoxListTilePageState createState() => _CheckBoxListTilePageState();
}

class _CheckBoxListTilePageState extends State<CheckBoxListTilePage> {
  bool check = true;
  bool check1 = false;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: GFColors.DARK,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Icon(
                  CupertinoIcons.back,
                  color: GFColors.SUCCESS,
                ),
              )),
          title: const Text(
            'CheckboxListTile',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            GFCheckboxListTile(
              titleText: 'hi',
              subtitleText: 'Happy Ugadi',
              avatar: GFAvatar(
                backgroundImage: AssetImage('lib/assets/images/img.png'),
              ),
              size: 25,
              activebgColor: Colors.green,
              activeIcon: Icon(
                Icons.check,
                size: 15,
                color: Colors.white,
              ),
              type: GFCheckboxType.circle,
              onChanged: (val) {
                setState(() {
                  check = val;
                });
              },
              value: check,
              inactiveIcon: null,
            ),
            GFCheckboxListTile(
              titleText: 'hi',
              subtitleText: 'Happy Ugadi',
              avatar: GFAvatar(
                backgroundImage: AssetImage('lib/assets/images/img1.png'),
              ),
              size: 25,
              activebgColor: Colors.green,
              activeIcon: Icon(
                Icons.check,
                size: 15,
                color: Colors.white,
              ),
              type: GFCheckboxType.circle,
              onChanged: (val) {
                setState(() {
                  check1 = val;
                });
              },
              value: check1,
              inactiveIcon: null,
            )
          ],
        ),
      );
}
