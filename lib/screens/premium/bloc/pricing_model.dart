import 'package:twelv/model/pricing/pricing.dart';
import 'package:twelv/services/network/products_client.dart';

class PricingModel {
  final ProductsRestClient _productsRestClient;
  Pricing? _pricing;

  PricingModel(this._productsRestClient);

  Future<Pricing> getPricing() async => _pricing ??= await _productsRestClient.getPricing();
}
