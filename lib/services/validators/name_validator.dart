import 'package:twelv/services/validators/validation.dart';

class NameValidator extends Validator<String?> {
  @override
  bool isValid(String? value) => value?.isNotEmpty == true;
}
