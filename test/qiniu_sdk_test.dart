import 'package:qiniu_sdk/qiniu_sdk.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    Upload upload;

    setUp(() {
      upload = new Upload();
    });

    test('First Test', () {
      expect(upload.directUpload(), isTrue);
    });
  });
}
