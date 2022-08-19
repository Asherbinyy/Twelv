import 'package:flutter/material.dart';

typedef OverlayEntriesBuilder = Iterable<OverlayEntry> Function();

class GenericOverlayRoute<T> extends OverlayRoute<T> {
  final OverlayEntriesBuilder overlayEntriesBuilder;
  final Duration? autoDismissTimer;

  GenericOverlayRoute({required this.overlayEntriesBuilder, this.autoDismissTimer});

  @override
  Iterable<OverlayEntry> createOverlayEntries() => overlayEntriesBuilder.call();

  @override
  void install() {
    super.install();
    if (autoDismissTimer != null) {
      Future<void>.delayed(autoDismissTimer!).then((_) => navigator?.pop());
    }
  }
}
