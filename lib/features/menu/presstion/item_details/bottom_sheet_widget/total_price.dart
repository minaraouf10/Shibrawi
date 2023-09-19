// import 'package:flutter/material.dart';
// import 'package:shibrawi/core/config/themes/app_colors.dart';
// import 'package:shibrawi/features/menu/presstion/item_details/bottom_sheet_widget/total_price_item.dart';
//
// import '../../../data/model/product_model.dart';
//
// class TotalPrice extends StatelessWidget {
//   final ProductModel data;
//
//   const TotalPrice(this.data, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           height: 110,
//           width: 90,
//           decoration: const BoxDecoration(
//             borderRadius: BorderRadiusDirectional.only(
//               topEnd: Radius.circular(30),
//               bottomEnd: Radius.circular(30.0),
//             ),
//             color: AppColors.primary,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsetsDirectional.only(start: 40.0, end: 20.0),
//           child: Column(
//             children: [
//               InkWell(
//                 onTap: () {
//                   //context.pushNamed(RouteNames.subItemScreen);
//                 },
//                 child: TotalPriceItem(data),
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
