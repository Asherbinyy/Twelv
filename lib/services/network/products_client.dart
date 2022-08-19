import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:twelv/model/pricing/pricing.dart';

part 'products_client.g.dart';

@RestApi()
abstract class ProductsRestClient {
  factory ProductsRestClient(Dio dio, {required String baseUrl}) = _ProductsRestClient;

  @GET('/pricing')
  Future<Pricing> getPricing();
}
