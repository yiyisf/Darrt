import 'package:http/http.dart' as http;
import 'dart:convert';

main() async{
  //for get
  var url = 'http://httpbin.org/';
  var response = await http.get(url);

  print("get Response status: ${response.statusCode}");
  print("get Response body: ${response.body}");

  //for post
  url = 'http://httpbin.org/post';
  response = await http.post(url, body: 'name=doodle&color=blue');
  print("post Response status: ${response.statusCode}");
  print("post Response body: ${response.body}");

  //for json
  url = 'https://api.github.com/users/dart-lang/repos';
  response =
  await http.get(url, headers: {'User-Agent': 'Dart/1.0 (My Dart client)'});

  List<String> repos = JSON.decode(response.body);
  var heading = 'Repository | Star count  | Fork count';
  print(heading);
  print(new List.filled(heading.length, '=').join());
  for (var repo in repos) {
    print("${repo['name']} | "
        "${repo['stargazers_count']} | "
        "${repo['forks_count']}");
  }
}