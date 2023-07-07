import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef Json = Map<String, dynamic>;

class CustomState<T> {
  final ProviderRef ref;
  final T initialValue;
  final StateProvider<T> provider;

  CustomState(this.ref, this.initialValue)
      : provider = StateProvider<T>((ref) => initialValue);

  set state(T state) => ref.read(provider.notifier).state = state;

  T get state => ref.read(provider.notifier).state;
}
