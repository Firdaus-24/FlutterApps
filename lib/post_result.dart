import 'package:http/http.dart' as http;
import 'dart:convert';

class PostResult {
  var id;
  var name;
  var job;
  var createdAt;

  PostResult({
    required this.id,
    required this.name,
    required this.job,
    required this.createdAt,
  });

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
        id: object["id"],
        name: object["name"],
        job: object["job"],
        createdAt: object["createdAt"]);
  }

  static Future<PostResult> connectToApi(String name, String job) async {
    var url = "https://reqres.in/api/users";
    var result = await http.post(url, body: {"name": name, "job": job});

    var jsonObject = json.decode(result.body);
    return PostResult.createPostResult(jsonObject);
  }
}
