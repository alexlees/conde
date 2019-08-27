import 'package:dio/dio.dart';

final _options = BaseOptions(
  baseUrl: 'https://cnodejs.org/api/v1',
  responseType: ResponseType.json,
  validateStatus: (i) => i == 200,
  connectTimeout: 3000,
  receiveTimeout: 3000,
);
Dio request = Dio(_options);
