import 'package:flutter_test/flutter_test.dart';
import 'package:twelv/services/network/http_proxy.dart';

void main() {
  test("proxy adapter should throw if proxy address is empty", () {
    // given
    const String emptyAddress = "";

    // then
    expect(() => HttpProxyAdapter(proxyAddress: emptyAddress), throwsAssertionError);
  });
}
