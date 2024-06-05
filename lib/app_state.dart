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

  DateTime? _reporthour;
  DateTime? get reporthour => _reporthour;
  set reporthour(DateTime? value) {
    _reporthour = value;
  }

  DateTime? _reportdate;
  DateTime? get reportdate => _reportdate;
  set reportdate(DateTime? value) {
    _reportdate = value;
  }

  String _reportid = '';
  String get reportid => _reportid;
  set reportid(String value) {
    _reportid = value;
  }
}
