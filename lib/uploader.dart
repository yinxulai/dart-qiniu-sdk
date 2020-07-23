import 'package:qiniu_sdk/model/assets.dart';

abstract class TokenProvider {
  Future<String> getToken();
}

class StaticTokenProvider implements TokenProvider {
  final String token;
  StaticTokenProvider(this.token) : assert(token != "" && token != null);

  @override
  Future<String> getToken() {
    return Future.value(this.token);
  }
}

class Uploader {
  final TokenProvider tokenProvider;
  const Uploader({String token, this.tokenProvider})
      : assert(token != null || tokenProvider != null);
}
