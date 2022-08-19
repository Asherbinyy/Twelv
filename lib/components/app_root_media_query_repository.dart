import 'package:flutter/cupertino.dart';

class AppRootMediaQueryRepository extends InheritedWidget {
  final MediaQueryData mediaQueryData;

  const AppRootMediaQueryRepository({
    Key? key,
    required this.mediaQueryData,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  static AppRootMediaQueryRepository of(BuildContext context) {
    final AppRootMediaQueryRepository? result =
        context.dependOnInheritedWidgetOfExactType<AppRootMediaQueryRepository>();
    assert(result != null, 'No MediaQueryData found in context');
    return result!;
  }
}
