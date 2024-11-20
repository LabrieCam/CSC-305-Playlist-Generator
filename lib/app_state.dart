import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  double _sliderValue = 0.0;
  double get sliderValue => _sliderValue;
  set sliderValue(double value) {
    _sliderValue = value;
  }

  String _spotifyurl = '';
  String get spotifyurl => _spotifyurl;
  set spotifyurl(String value) {
    _spotifyurl = value;
  }

  String _playlistName = '';
  String get playlistName => _playlistName;
  set playlistName(String value) {
    _playlistName = value;
  }

  String _playlistImage = '';
  String get playlistImage => _playlistImage;
  set playlistImage(String value) {
    _playlistImage = value;
  }

  String _genre = '';
  String get genre => _genre;
  set genre(String value) {
    _genre = value;
  }
}
