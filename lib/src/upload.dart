
import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';

import 'package:http_parser/http_parser.dart';




class Upload {
  Future upload() {}
  // 直传
  Future directUpload() {
    var uri = Uri.parse("http://pub.dartlang.org/packages/create");
    var request = new MultipartRequest("POST", uri);

    var file = new MultipartFile.fromBytes('package',[10, 7, 23] ,contentType: new MediaType('application', 'x-tar'));

    request.fields['user'] = 'nweiz@google.com';
    request.files.add(file);

    request.send().then((response) {
      if (response.statusCode == 200) print("Uploaded!");
    });
  }
  // 分片
  Future resumeUpload() {}
}
