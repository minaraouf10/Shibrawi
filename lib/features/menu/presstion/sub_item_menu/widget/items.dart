import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

class Items extends StatelessWidget {
  const Items({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>
          Container(width: 50, height: 50, color: Colors.black,),
      separatorBuilder: (context,index)=>Height(10.0),
      itemCount: 20,);
  }
}