import 'dart:convert';
import 'package:resep_makanan/models/resep.dart';
import 'package:http/http.dart' as http;

class RecipeApi {
  static Future<List<Resep>> getResep() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list', {
      "limit": "24",
      "start": "0"
    });

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "f0b8b0f930mshca4fb6b3fa97cb7p1cf020jsnef3341bb1d16",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Resep.resepFromSnapshot(_temp);
  }
}
