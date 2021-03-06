import 'dart:convert';
import 'package:resep_makanan/models/resep.dart';
import 'package:http/http.dart' as http;

class ResepApi {
  static Future<List<Resep>> getResep() async {
    var uri = Uri.https('tasty.p.rapidapi.com', 'recipes/list', {
      "from": "0",
      "size": "100",
      "tags": "under_30_minutes"
    });

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Key": "f0b8b0f930mshca4fb6b3fa97cb7p1cf020jsnef3341bb1d16",
      "X-RapidAPI-Host": "tasty.p.rapidapi.com",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['results']) {
      _temp.add(i);
    }
    return Resep.resepFromSnapshot(_temp);
  }
}
