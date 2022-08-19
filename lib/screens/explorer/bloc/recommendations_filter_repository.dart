import 'package:hive/hive.dart';
import 'package:twelv/model/recommendation/recommendations_filters.dart';

class RecommendationsFilterRepository {
  final String _boxName = "recommendations_filter";
  final String _entityKey = "recommendations_filter_entity";

  RecommendationsFilters? _recommendationsFilters;

  Future<void> init() async {
    Hive.openBox<RecommendationsFilters>(_boxName)
        .then((Box<RecommendationsFilters> box) => _recommendationsFilters = box.get(_entityKey));
  }

  RecommendationsFilters? get recommendationsFilters => _recommendationsFilters;

  set recommendationsFilters(RecommendationsFilters? recommendationsFilters) {
    _recommendationsFilters = recommendationsFilters;
    if (recommendationsFilters != null) {
      Hive.box<RecommendationsFilters>(_boxName).put(_entityKey, recommendationsFilters);
    }
  }
}
