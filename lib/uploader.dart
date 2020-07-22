import 'package:qiniu_sdk/model/assets.dart';

abstract class TokenProvider {
  Future<String> getToken();
}

class StaticTokenProvider implements TokenProvider {
  final token;
  StaticTokenProvider(this.token) : assert(token != "" && token != null);

  @override
  Future<String> getToken() {
    return Future.value(this.token);
  }
}

class Uploader {
  final String token;
  final TokenProvider tokenProvider;
  const Uploader({this.token, this.tokenProvider})
      : assert(token != null || tokenProvider != null)
      : token != null ?? tokenProvider = StaticTokenProvider(token)
      ;

  upload({Assets object, String key, putExtra, config}){
  }
}
