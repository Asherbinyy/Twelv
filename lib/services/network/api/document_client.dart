import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'document_client.g.dart';

@RestApi()
abstract class DocumentClient {
  factory DocumentClient(Dio dio, {required String baseUrl}) = _DocumentClient;

  @GET("/documents?q={htmlDocumentType}")
  Future<String> getDocument(@Path("htmlDocumentType") String htmlDocumentType);

  @GET("/documents?q=terms_of_use_modification_date")
  Future<String> getTermsModificationDate();
}
