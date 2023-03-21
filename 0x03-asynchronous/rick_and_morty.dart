import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() {
    String url = 'https://www.breakingbadapi.com/api/quotes/$id';
    try {
        var response = await http.get(Uri.parse(url));
        var characters = json.decode(response.body);
        characters.forEach((character) => print(character['name']));
    } catch (err) {
        print("error caught: $err");
  }
}