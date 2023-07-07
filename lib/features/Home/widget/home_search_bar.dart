import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';

class HomeSearchBar extends StatelessWidget {
  HomeSearchBar({super.key});

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
