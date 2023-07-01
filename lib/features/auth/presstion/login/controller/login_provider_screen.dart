import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';

final loginProviderScreen = Provider<_LoginLogic>(
      (ref) => _LoginLogic(ref: ref),
);

class _LoginLogic extends _LoginStates {
  _LoginLogic({required super.ref});

  Future<void> getData() async {
    isLoading.state = true;
    await Future.delayed(const Duration(seconds: 2));
    isLoading.state = false;
  }

  Future<void> userLogin({
    required String email,
    required String password,
})
  async {


  }

}

class _LoginStates {
  final ProviderRef ref;
  final CustomState<bool> isLoading;

  _LoginStates({required this.ref}) :
        isLoading = CustomState<bool>(ref, false);
}