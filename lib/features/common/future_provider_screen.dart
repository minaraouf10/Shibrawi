import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension ONExt on WidgetRef {
  Widget watchWhen<T>({
    required ProviderBase<AsyncValue<T>> provider,
    required Widget Function(T data) data,
    bool skipLoadingOnReload = false,
    bool skipLoadingOnRefresh = false,
    bool skipError = false,
    Widget Function(Object error, StackTrace stackTrace)? error,
    Widget Function()? loading,
  }) {
    return watch(provider).when(
      skipLoadingOnReload: skipLoadingOnReload,
      skipLoadingOnRefresh: skipLoadingOnRefresh,
      skipError: skipError,
      data: data,
      error: error ??
          (e, s) {
            log(e.toString(), stackTrace: s, name: 'watchWhen');
            return Text(e.toString());
          },
      loading: loading ??
          () => const Center(child: CircularProgressIndicator.adaptive()),
    );
  }
}
