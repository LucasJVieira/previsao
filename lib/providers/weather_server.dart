import 'package:dio/dio.dart';

Future getData() async {
  var result = await Dio()
      .get("https://api.hgbrasil.com/weather?woeid=455851&key=421f56f4");
  return result.data;
}