import 'dart:convert';
import 'package:http/http.dart' as http;

class FetchGerman {
  static Future<List<Map<String, dynamic>>> fetchData() async {
    final apiUrl = "https://jalur-gaza-9d0d1-default-rtdb.firebaseio.com/deutsch.json?auth=UX54OdUTAo3Z5FMk5oT8MxM0IWgymOhoAUeAM53a";

    try {
      final response = await http.get(Uri.parse(apiUrl));
      
      if (response.statusCode == 200) {
        final List<Map<String, dynamic>> dataFromApi = List.from(json.decode(response.body)["data"]);

        // Perform any additional processing or mapping if needed

        return dataFromApi;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }
}
