import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

class HttpStateful {
  String id, fullname, email, avatar;

  HttpStateful(
      {required this.id,
      required this.fullname,
      required this.email,
      required this.avatar});

  static Future<HttpStateful> connectAPI(String id) async {
    // ignore: prefer_interpolation_to_compose_strings
    Uri url = Uri.parse('https://reqres.in/api/users/' + id);

    var hasilRespon = await http.get(url);

    var data = (json.decode(hasilRespon.body))['data'];

    return HttpStateful(
        id: data['id'].toString(),
        fullname: data['firstname'] + ' ' + data['lastname'],
        avatar: data['avatar'],
        email: data['email']);
  }
}
