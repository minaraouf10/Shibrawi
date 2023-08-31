import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/utils/custom_state.dart';
import 'package:shibrawi/features/search/data/model/search_model.dart';
import 'package:shibrawi/features/search/data/service/search_service.dart';

final searchProviderScreen = Provider<SearchLogic>(
      (ref) => SearchLogic(ref: ref,ref.watch(searchServiceProvider)),
);

class SearchLogic extends _SearchStates {
  final SearchService searchService;
  SearchLogic(this.searchService,{required super.ref});

  final searchController = TextEditingController();
   static  SearchModel? searchModel ; // Initialize with a default value

  search() async {
    try {
      isLoading.state = true;
      searchModel = await searchService.searchData(searchController.text);

        //searchModel = (await searchService.searchData(searchController.text)) as List<SearchModel>;

      log(searchModel.toString(), name: 'search controller');
      isLoading.state = false;
      isSuccess.state = true;
    } catch (e, s) {
      isError.state = e.toString();
      log(isError.state, stackTrace: s, name: 'nana');
    } finally {
      isLoading.state = false;
    }
  }

}

class _SearchStates {
  final ProviderRef ref;
  final CustomState<bool> isLoading;
  final CustomState<bool> isSuccess;
  final CustomState<String> isError;

  _SearchStates({required this.ref})
      : isLoading = CustomState<bool>(ref, false),
        isSuccess = CustomState<bool>(ref, false),
        isError = CustomState<String>(ref, '');
}