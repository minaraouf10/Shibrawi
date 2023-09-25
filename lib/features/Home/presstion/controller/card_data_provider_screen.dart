import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/config/utils/custom_state.dart';

final cardDataProviderScreen = Provider<CardDataLogic>(
  (ref) => CardDataLogic(ref: ref),
);

class CardDataLogic extends _CardDataStates {
  CardDataLogic({required super.ref});
}

class _CardDataStates {
  final ProviderRef ref;
  final CustomState<bool> isLoading;

  _CardDataStates({required this.ref})
      : isLoading = CustomState<bool>(ref, false);
}
