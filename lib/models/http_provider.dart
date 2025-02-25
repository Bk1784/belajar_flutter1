import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpProvider with ChangeNotifier {
  Map<String, dynamic> _data = {};
  Map<String, dynamic> get data => _data;

  int get jumlahData => _data.length;

  void connectAPI(String id) async {
    // ignore: prefer_interpolation_to_compose_strings
    Uri url = Uri.parse('https://reqres.in/api/users/' + id);

    var hasilRespon = await http.get(url);

    _data = (json.decode(hasilRespon.body))['data'];
    notifyListeners();
  }
}
