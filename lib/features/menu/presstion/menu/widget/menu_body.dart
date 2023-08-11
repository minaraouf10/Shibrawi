import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/utils/assets_manager.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
import 'package:shibrawi/features/common/future_provider_screen.dart';
import 'package:shibrawi/features/menu/presstion/controller/categories_provider.dart';
import 'package:shibrawi/features/menu/presstion/menu/widget/menu_item.dart';

class MenuBody extends ConsumerWidget {
  const MenuBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watchWhen(
      provider: categoriesProvider,
      data: (data) {
        return Stack(
          children: [
            Container(
              height: 120 * data.length + 20,
              width: context.width * 0.27,
              decoration: const BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(30),
                  bottomEnd: Radius.circular(30.0),
                ),
                color: AppColors.primary,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  top: 32.0, start: 40.0, end: 20.0),
              child: SizedBox(
                height: 120 * data.length + 1,
                child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          context.pushNamed(
                            RouteNames.subItemScreen,
                            arguments: data[index].id,
                          );
                        },
                        child: MenuItem(
                          icon: data[index].image,
                          title: data[index].name,
                          items: '45 Items',
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Height(40.0);
                    },
                    itemCount: data.length),
              ),
            )
          ],
        );
      },
      error: (error, stackTrace) {
        return Center(
          child: Text(error.toString()),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
