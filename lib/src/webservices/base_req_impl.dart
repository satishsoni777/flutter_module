import 'package:flutter_common_poc/flutter_common_poc.dart';

class BaseRequestImpl extends BaseRequest {
  @override
  Future<String> getBaseUrl() async {
    return "htttp://www.google.com";
  }

  @override
  Future<Map<String, String>> setRequestHeaders() async {
    return {"": ""};
  }
}
