import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shibrawi/features/menu/presstion/menu/widget/menu_search_bar.dart';
import 'package:shibrawi/features/menu/presstion/sub_item_menu/widget/sub_item_menu_title.dart';
//
// class SubItemScreen extends StatelessWidget {
//   const SubItemScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             const Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: 20.0,
//               ),
//               child: SubItemMenuTitle(),
//             ),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                     child: MenuSearchBar(),
//                   ),
//                   const Height(25.0),
//                   ...List.generate(
//                     5,
//                       (index)=>
//                           SvgPicture.asset('assets/images/Find food you love vector.svg')
//
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


class SubItemScreen extends StatelessWidget {
  const SubItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SubItemMenuTitle(),
            ),
            MenuSearchBar(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                children: [
                  const SizedBox(height: 25.0),
                  ...List.generate(
                    5,
                        (index) => SvgPicture.asset('assets/images/Find food you love vector.svg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
