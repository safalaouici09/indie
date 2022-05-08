import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'AcceuilPage.dart';

class IndiePage extends StatelessWidget {
  const IndiePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFirstStackColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.all(100),
            //ssss padding: EdgeInsets.all(0),

            child: Row(children: [
              SizedBox(
                width: 70,
              ),
              Text(
                'Indie',
                style: KDtextStyle,
              ),
            ]),
          ),
          Container(
            padding: EdgeInsets.all(200),
            decoration: BoxDecoration(
              color: kDtextColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TrackRow(),
                TrackRow(),
                TrackRow(),
                TrackRow(),
              ],
            ),
          ),
        ]),
      )),
    );
  }
}
