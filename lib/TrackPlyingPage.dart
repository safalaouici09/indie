import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indie/constants.dart';
import 'AcceuilPage.dart';

class TrackPalyer extends StatefulWidget {
  @override
  _TrackPalyerState createState() => _TrackPalyerState();
}

class _TrackPalyerState extends State<TrackPalyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height,
              child: Container(
                decoration: BoxDecoration(
                  color: kFirstStackColor,
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 150,
              child: Text(
                'Indie',
                style: KDtextStyle,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 6,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height,
              child: Container(
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: kDtextColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.music_note_sharp,
                            size: 80,
                          ),
                          Text(
                            "title",
                            style: KtextStyle,
                          ),
                          Text(
                            "Artist",
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: "BaiJamjuree",
                                color: kIconColor,
                                fontWeight: FontWeight.w100),
                          ),
                          SizedBox(
                            height: 190,
                          ),
                        ]),
                    Slider(
                      value: 50,
                      min: 0,
                      max: 100,
                      onChanged: null,
                      inactiveColor: kIconColor,
                      activeColor: kFtextColor,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.skip_previous_sharp),
                        Icon(Icons.play_arrow_sharp),
                        Icon(
                          Icons.skip_next_sharp,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
