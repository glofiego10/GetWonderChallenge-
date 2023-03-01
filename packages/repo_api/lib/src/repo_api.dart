import 'dart:convert';

import 'package:http/http.dart' as http;

///Clase de fake api
class RepoApi {
  ///Trae imagenes de una fake api
  Future<List<Map<String, dynamic>>> getImagenes() async {
    final response = await http.get(
      Uri.parse(
        'https://picsum.photos/v2/list',
      ),
    );
    if (response.statusCode == 200) {
      final dynamicList = jsonDecode(response.body) as List<dynamic>;
      return dynamicList.cast<Map<String, dynamic>>().toList();
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
