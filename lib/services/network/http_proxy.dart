import 'dart:io';

import 'package:dio/adapter.dart';

class HttpProxyAdapter extends DefaultHttpClientAdapter {
  final String proxyAddress;

  HttpProxyAdapter({required this.proxyAddress}) : assert(proxyAddress.isNotEmpty) {
    onHttpClientCreate = (HttpClient client) {
      client.findProxy = (Uri url) {
        return "PROXY $proxyAddress;";
      };

      client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
    };
  }
}
