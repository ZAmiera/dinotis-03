import 'package:dinotis/constants.dart';
import 'package:dinotis/models/Creator.dart';
import 'package:dio/dio.dart';

class CreatorController{
  late final Dio _dio;

  CreatorController (this._dio);

   Future<Creator> getCreators(String id) async {
    try {
      final response = await _dio.getUri(Uri.https(baseUrl, creatorsUrl, {'id': id}));
      if (response.statusCode == 200) {
        print(response.data);
        return Creator.fromJson(response.data);
      } else {
        print("failed to get creators: ${response.statusCode}");
        return Creator.withError(response.statusMessage.toString());
      }
    } on DioError catch  (e) {
      // print("failed to get creators: $e");
      return Creator.withError(e.message.toString());
    }
  }
}