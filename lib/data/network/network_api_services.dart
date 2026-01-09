

import 'dart:async';
import 'dart:convert';
import 'dart:io';


import 'package:http/http.dart' as http;
import 'package:learnify_app/data/app_exceptions/app_exceptions.dart';
import 'package:learnify_app/data/network/base_api_services.dart';

class NetworkServiceApi implements BaseApiServices{
 
  @override
  Future<dynamic> getApi(String url) async{

    dynamic jsonResonse;
    try{
      final response = await http.get(Uri.parse(url));
      jsonResonse = returnResponse(response);
      if(response.statusCode==200){

      }
    } on SocketException{
      throw NoInternetException("No internet connection...");
    }
    on TimeoutException{
      throw RequestTimeOutException("Timeout, please try again...");
    }
    return jsonResonse;
  }






  @override
  Future<dynamic> postApi(String url, var data) async{
     dynamic jsonResonse;
    try{
      final response = await http.post(Uri.parse(url),
      body: data,
      );
      jsonResonse = returnResponse(response);
      if(response.statusCode==200){

      }
    } on SocketException{
      throw NoInternetException("No internet connection...");
    }
    on TimeoutException{
      throw RequestTimeOutException("Timeout, please try again...");
    }
    return jsonResonse;
  
  }


   @override
  Future<dynamic> deleteAPI(String url) async{
  
  }
dynamic returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
    case 400:
      return jsonDecode(response.body);

    case 401:
      throw UnAuthorizedException(
          "Unauthorized error: ${response.statusCode}");

    case 403:
      throw FetchDataException("Forbidden / API key issue");

    case 404:
      throw FetchDataException("Resource not found");

    case 429:
      throw FetchDataException("YouTube API quota exceeded");

    case 500:
      throw FetchDataException(
          "Server error: ${response.statusCode}");

    default:
      throw FetchDataException(
          "Unexpected error: ${response.statusCode}");
  }
}



  // dynamic returnResponse(http.Response response){
  //   switch(response.statusCode){

  //     case 200:
  //     dynamic jsonResponse = jsonDecode(response.body);
  //     return jsonResponse;

  //     case 400:
  //     dynamic jsonResponse = jsonDecode(response.body);
  //     return jsonResponse;
      
  //     case 401:
  //     throw UnAuthorizedException("Unauthorized error: $response.statusCode.toString() ");

  //     case 500:
  //     throw FetchDataException("Error while fetching data: $response.statusCode.toString() ");
  //   }
  // }

}