import 'package:dio/dio.dart';
import 'package:flutter_base/src/models/user.dart';

class RemoteDatasource {
  final dio = Dio(BaseOptions(baseUrl: 'https://reqres.in/api'));

  Future<DataUser> getusers() async {
    final response = await dio.get('/users');
    return DataUser.fromJson(response.data);
  }
}
