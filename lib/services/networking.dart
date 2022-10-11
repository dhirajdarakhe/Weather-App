import 'package:http/http.dart' as http;
import 'dart:convert';

class Networking
{
  Networking(this.ur);
  final String ur;

  Future getData() async
  {
    http.Response response = await http.get(ur);
    if(response.statusCode == 200) {
      return  jsonDecode(response.body);
    }
    else
    {
      print(response.statusCode);
    }

  }
}