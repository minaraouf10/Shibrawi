import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

class HomeSearchBar extends StatelessWidget {
  HomeSearchBar({super.key});

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Delivering to',
          style: TextStyle(fontSize: 11.0, color: AppColors.foreground),
        ),
        const Height(5.0),
        DropdownButtonHideUnderline(
          child: DropdownButton(
              value: 'Current Location',
              style: const TextStyle(
                color: AppColors.lightBlack,
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
              icon: const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: AppColors.orange,
              ),
              items: const [
                DropdownMenuItem(
                  value: 'mina',
                  child: Text('mina'),
                ),
                DropdownMenuItem(
                  value: 'Current Location',
                  child: Text('Current Location       '),
                ),
              ],
              onChanged: (value) {
                value = 'Current Location';
              }),
        ),
        Container(
          padding: const EdgeInsetsDirectional.symmetric(vertical: 5),
          margin: const EdgeInsets.symmetric(
            horizontal: 5.0,
          ),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.gryFormField,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white, width: 2.0),
          ),
          child: TextFormField(
            readOnly: true,
            controller: searchController,
            keyboardType: TextInputType.text,
            enableSuggestions: false,
            autocorrect: false,
            onChanged: (context) {},
            decoration: const InputDecoration(
              contentPadding: EdgeInsetsDirectional.only(start: 35, end: 10),
              labelText: 'Search food',
              enabled: false,
              prefixIcon: Padding(
                padding: EdgeInsetsDirectional.only(start: 10, end: 10),
                child: Icon(
                  Icons.search,
                  size: 27,
                ),
              ),
              //prefixIcon: SvgPicture.asset('assets/icons/search_icon.svg',width: 5,height: 5,),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
