import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/features/search/data/model/search_model.dart';
import 'package:shibrawi/features/search/presstion/controller/search_provider_screen.dart';
import 'package:shibrawi/features/search/presstion/widget/search_top.dart';
import 'package:shibrawi/features/search/presstion/widget/sub_item_menu/widget/items.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context,ref) {
    final searchScreenProvider = ref.watch(searchProviderScreen);

    //ref.listen(searchScreenProvider.isLoading == true, (previous, state) { });

    return Scaffold(
      body: SafeArea(child: Column(
        children:   const [
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 20.0),
            child: SearchTop(),
          ),
          Expanded(
            child:
            //ListView.separated(
            //     physics: const BouncingScrollPhysics(),
            //     itemBuilder: (context, index) =>
            ItemsSearch(),
            //ItemsSearch(searchScreenProvider.searchModel as SearchModel),

            // separatorBuilder: (context, index) =>Container(
            //   width: double.infinity,
            //   height: 1.0,
            //   color: Colors.grey[300],
            // ),
            // itemCount: 1),
          ),
        ],
      )),
    );
  }
}

Widget buildListProduct(model, BuildContext context,
    {bool isOldPrice = true}) =>
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 120,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Image(
                  image: NetworkImage(model.image!),
                  fit: BoxFit.cover,
                  width: 120.0,
                  height: 120.0,
                ),
                if (model.discount != 0 && isOldPrice)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    color: Colors.red,
                    child: const Text(
                      'DISCOUNT',
                      style: TextStyle(fontSize: 8.0, color: Colors.white),
                    ),
                  )
              ],
            ),
            const SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.name!.toString(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(height: 1.3, fontSize: 14.0),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        model.price.toString(),
                        style: const TextStyle(
                            fontSize: 12.0, //color: defaultColor
                           ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      if (model.discount != 0 && isOldPrice)
                        Text(
                          model.oldPrice.toString(),
                          style: const TextStyle(
                              fontSize: 10.0,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                         // ShopCubit.get(context).changeFavorites(model.id!);
                          // log(model.id.toString());
                        },
                        icon: const CircleAvatar(
                          radius: 15.0,
                         // backgroundColor:
                          // ShopCubit.get(context).favorite[model.id]!
                          //     ? defaultColor
                          //     : Colors.grey,
                          child: Icon(
                            Icons.favorite_border,
                            size: 17.0,
                            color: Colors.white,
                          ),
                        ),
                        padding: EdgeInsets.zero,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );