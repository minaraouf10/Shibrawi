import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';

import '../../../../features/search/presstion/controller/search_provider_screen.dart';
import '../../router/route_names.dart';
import '../../themes/app_colors.dart';

class CustomSearchBar extends ConsumerWidget {
  const CustomSearchBar({
    // required this.readOnly,
    super.key,
  });

  // final bool readOnly;

  @override
  Widget build(BuildContext context, ref) {
    final searchProvider = ref.read(searchProviderScreen);
    return InkWell(
      onTap: () => context.pushNamed(RouteNames.searchScreen),
      child: Container(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 5),
        margin: const EdgeInsets.symmetric(
            // horizontal: 5.0,
            ),
        width: context.width,
        decoration: BoxDecoration(
          color: AppColors.gryFormField,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white, width: 2.0),
        ),
        child: TextFormField(
          readOnly: true,
          controller: searchProvider.searchController,
          keyboardType: TextInputType.text,
          enableSuggestions: false,
          autocorrect: false,
          onChanged: (context) => searchProvider.search(),
          decoration: const InputDecoration(
            contentPadding: EdgeInsetsDirectional.only(start: 35, end: 10),
            labelText: 'Search product',
            enabled: false,
            prefixIcon: Padding(
              padding: EdgeInsetsDirectional.only(start: 10, end: 10),
              child: Icon(
                Icons.search,
                size: 27,
              ),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
