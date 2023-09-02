import 'package:flutter/material.dart';
import 'package:shibrawi/features/search/presstion/controller/search_provider_screen.dart';
import 'package:shibrawi/features/search/presstion/widget/search_top.dart';
import 'package:shibrawi/features/search/presstion/widget/sub_item_menu/widget/item_search.dart';
import 'package:shibrawi/main.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void dispose() {
    globalRef.read(searchProviderScreen).searchController.clear();
    globalRef.read(searchProviderScreen).searchData.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 20.0),
              child: SearchTop(),
            ),
            Expanded(
              child: ItemsSearch(),
            ),
          ],
        ),
      ),
    );
  }
}
