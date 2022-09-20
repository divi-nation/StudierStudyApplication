import 'package:http/http.dart' as http;
import 'dart:convert';

// void login(group_name, group_location, group_mode, group_topic, group_time, group_duration) async {
//   dynamic request = await http.post(Uri.parse("192.168.43.65/server/login.php"), body: {
//     'group_name': "$group_name",
//     'group_location': "$group_location",
//     'group_mode': "$group_mode",
//     'group_topic': "$group_topic",
//     'group_time': "$group_time",
//     'group_location': "$group_duration",

//   });
// }

dostuff(location, name) async {
  dynamic request =
      await http.post(Uri.parse('192.168.43.65/server/login.php'), body: {
    'location': "$location",
    'name': "$name",
  });

  if (request.StatusCode == 200) {
    dynamic result = json.decode(request.body);
    if (result[0]['status'] == 'successfull') {
      return true;
    }
    return false;
  }
}


// import 'dart:convert';
// import 'package:flutter/cupertino.dart';
// import 'package:http/http.dart' as http;

// class CallApi {
//   final String _url = "http://localhost/api";
//   postData(data, apiUrl) async {
//     var fullUrl = _url + apiUrl;
//     return await http.post(
//       Uri.parse(fullUrl),
//       body: jsonEncode(data),
//       headers: _setHeaders(),
//     );
//   }

//   _setHeaders() => {
//         'Content-type': 'application/json',
//         'Accept': 'application/json',
//       };
// }


