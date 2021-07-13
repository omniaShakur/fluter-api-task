import 'package:api_flutter_app/services/constants.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import 'dart:convert';


abstract class ServicesHandlerInterface{
  Future<dynamic> getService(String endPoint, {Map<String, String> headers});
  Future<dynamic> postService(String endPoint, {Map<String, String> headers,
   dynamic body});
}

class ServicseHandler implements ServicesHandlerInterface{

  Future<dynamic> getService(String endPoint,
   {Map<String, String>? headers = const{'content type':'Aplication/json'}}) async{
     try{
Uri url = Uri.parse(Constants.BASE_URL + endPoint);

  http.Response response = await http.get(url, headers: headers);
print('Response status: ${response.statusCode}');
print('Response body: ${response.body}');
if (response.statusCode ==200){
     return jsonDecode(response.body);
   }
   else{
     throw Exception('something wrong happened');
   }
     }
     catch (error) {
       print('Http error: $error');
    throw Exception('please check your connection');
     }
    

  } 


  Future<dynamic> postService(String endPoint, {Map<String, String>? headers, dynamic body})async{
    try {
  Uri url = Uri.parse(Constants.BASE_URL + endPoint);

  http.Response response = await http.post(url, headers: headers, body: body);
print('Response status: ${response.statusCode}');
print('Response body: ${response.body}');
if (response.statusCode ==200){
     return jsonDecode(response.body);
   }
   else{
     throw Exception('something wrong happened');
   }

  } catch (error) {
    print('Http error: $error');
    throw Exception('please check your connection');
  }
  }
}