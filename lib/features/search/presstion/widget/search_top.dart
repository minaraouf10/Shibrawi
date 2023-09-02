import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/search/presstion/controller/search_provider_screen.dart';

class SearchTop extends ConsumerWidget {
  const SearchTop({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final searchTopProvider = ref.read(searchProviderScreen);

    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                  onTap: () {
                    context.pop();
                  },
                  child: const Icon(Icons.arrow_back_ios_new_outlined)),
              const Width(20.4),
              const Text(
                'Search',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: AppColors.loginBlack,
                  height: 29 / 24,
                ),
              ),
              const Spacer(),
              SvgPicture.asset(AssetsManger.shoppingCart)
            ],
          ),
          const Height(25.0),
          Container(
            padding: const EdgeInsetsDirectional.symmetric(vertical: 5),
            margin: const EdgeInsets.symmetric(
              horizontal: 5.0,
            ),
            width: context.width,
            decoration: BoxDecoration(
              color: AppColors.gryFormField,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white, width: 2.0),
            ),
            child: TextFormField(
              controller: searchTopProvider.searchController,
              keyboardType: TextInputType.text,
              enableSuggestions: false,
              autocorrect: false,
              onChanged: (context) => searchTopProvider.search(),
              decoration: const InputDecoration(
                contentPadding: EdgeInsetsDirectional.only(start: 35, end: 10),
                labelText: 'Search product',
                // enabled: false,
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
        ],
      ),
    );
  }
}
