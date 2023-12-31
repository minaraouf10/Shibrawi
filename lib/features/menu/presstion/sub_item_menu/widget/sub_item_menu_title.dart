// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:shibrawi/core/config/extensions/context_extensions.dart';
// import 'package:shibrawi/core/config/utils/assets_manager.dart';
// import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';
//
// class SubItemMenuTitle extends StatelessWidget {
//   final String categoryName;
//
//   const SubItemMenuTitle(this.categoryName, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 25.0),
//       child: Padding(
//         padding: const EdgeInsets.only(bottom: 5.0),
//         child: Row(
//           children: [
//             InkWell(
//                 onTap: () {
//                   context.pop();
//                 },
//                 child: const Icon(Icons.arrow_back_ios_new_outlined)),
//             const Width(20.4),
//             Text(
//               categoryName,
//               style: const TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//             const Spacer(),
//             SvgPicture.asset(AssetsManger.shoppingCart)
//           ],
//         ),
//       ),
//     );
//   }
// }
