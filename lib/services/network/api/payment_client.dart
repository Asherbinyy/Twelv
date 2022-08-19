import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:twelv/model/pricing/payment_finalize_request.dart';

part 'payment_client.g.dart';

@RestApi()
abstract class PaymentRestClient {
  factory PaymentRestClient(Dio dio, {required String baseUrl}) = _PaymentRestClient;

  @POST("/users/payment/finalize")
  Future<HttpResponse<dynamic>> finalizePayment(@Body() PaymentFinalizeRequest body);
}
