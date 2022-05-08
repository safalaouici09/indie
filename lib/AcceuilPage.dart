import 'package:flutter/material.dart';
import 'package:indie/TrackPlyingPage.dart';

import 'constants.dart';
import 'playlist.dart';
import 'Playlist1.dart';

List<Playlist> playlists = [];
//List<PlaylistContainer()> pc = [];

class Acceuil extends StatelessWidget {
  const Acceuil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGSColor,
      appBar: AppBar(
        backgroundColor: kBGSColor,
        title: Icon(
          Icons.account_circle,
          size: 35,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Indie',
                  style: KBtextStyle,
                ),
                Text(
                  "Good morning ",
                  style: KtextStyle,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'My Playlists',
                  style: KtitleStyle,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    PlaylistContainer(Icons.music_note, "Playlist-1"),
                    PlaylistContainer(Icons.music_note, "Playlist-2"),
                    PlaylistContainer(Icons.music_note, "Playlist-3"),
                    PlaylistContainer(Icons.music_note, "Playlist-4"),
                  ]),
                ),
                Text(
                  "Recently added",
                  style: KtitleStyle,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      TrackRow(),
                      TrackRow(),
                      TrackRow(),
                      TrackRow(),
                      TrackRow(),
                      TrackRow(),
                      TrackRow(),
                      TrackRow(),
                      TrackRow(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TrackRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TrackPalyer()),
        );
      },
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(Icons.music_note),
          SizedBox(
            width: 30,
          ),
          Column(
            children: [
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
              Divider(
                color: kIconColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class PlaylistContainer extends StatelessWidget {
  IconData icon = Icons.nat;
  String title = "";
  // Widget playlistPage = Container();
  PlaylistContainer(IconData icon, String title) {
    // this.playlistPage = playlistPage;
    this.icon = icon;
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Playlist1()),
          );
        },
        child: Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 20),
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
                color: kFirstStackColor,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  icon,
                  color: kDtextColor,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "BaiJamjuree",
                    color: Colors.black,
                  ),
                )
              ],
            )));
  }
}
