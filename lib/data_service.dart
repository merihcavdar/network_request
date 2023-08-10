import 'package:http/http.dart' as http;

class DataService {
  Future<String> makeRequestToApi() async {
    final uri = Uri.https(
      'official-joke-api.appspot.com',
      'random_joke',
    );
    final response = await http.get(uri);
    return response.body;
  }
}
