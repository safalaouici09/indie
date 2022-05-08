import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indie/constants.dart';
import 'AcceuilPage.dart';

class Playlist1 extends StatefulWidget {
  @override
  _Playlist1State createState() => _Playlist1State();
}

class _Playlist1State extends State<Playlist1> {
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
              top: 90,
              left: 210,
              child: Text(
                'Indie',
                style: KDtextStyle,
              ),
            ),
            Positioned(
              top: 140,
              left: 170,
              child: Text(
                'Nb of tracks , time min ',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20.0,
                  fontFamily: "BaiJamjuree",
                ),
              ),
            ),
            Positioned(
                top: 160,
                child: Row(
                  children: [Btn("Play"), Btn("Shuffle")],
                )),
            Positioned(
              top: MediaQuery.of(context).size.height / 2.7,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height / 1.5,
              child: Container(
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: kDtextColor,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TrackRow(),
                      TrackRow(),
                      TrackRow(),
                      TrackRow(),
                      TrackRow(),
                      TrackRow(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Btn extends StatelessWidget {
  String label = "";
  Btn(String label) {
    this.label = label;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
      decoration: BoxDecoration(
          color: KBtnColor, borderRadius: BorderRadius.circular(100)),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.black54,
          fontSize: 20.0,
          fontFamily: "BaiJamjuree",
        ),
      ),
    );
  }
}
