import 'package:twelv/services/validators/name_validator.dart';

class ValidationService {
  final NameValidator name;

  ValidationService(this.name);
}

abstract class Validator<T> {
  bool isValid(T value);
}
