import 'package:dio/dio.dart';

final _options = BaseOptions(
  baseUrl: 'https://cnodejs.org/api/v1',
  responseType: ResponseType.json,
  validateStatus: (i) => i == 200,
  connectTimeout: 3000,
  receiveTimeout: 3000,
);
class CNodeRequest extends Dio {
  CNodeRequest([BaseOptions options]) {
    if (options == null) {
      options = _options;
    }
    this.options = options;
    interceptors.add(CNodeInterceptor());
  }
}
class CNodeInterceptor extends Interceptor {
}
CNodeRequest request = CNodeRequest();
