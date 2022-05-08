import 'package:flutter/material.dart';
import 'Track.dart';

class Playlist {
  String title = '';
  List<Track> tracks = [];

  Playlist(String title, List<Track> tracks) {
    this.title = title;
    this.tracks = tracks;
  }
}
