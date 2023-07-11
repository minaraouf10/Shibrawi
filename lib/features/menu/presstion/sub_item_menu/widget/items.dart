import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';

class Items extends StatelessWidget {
  const Items({Key? key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://media.istockphoto.com/id/109723209/photo/caviar-on-quail-egg-and-avocado-mousse.jpg?s=612x612&w=0&k=20&c=KbUQGBuVMy6gwFmRp4CLvHTSVWUAx0-8gm-YqPQ4zWE=',
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: 200,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
               stops: const [0.2,0.8],
              colors: [Colors.black.withOpacity(0.3), Colors.transparent],
            ),
          ),
          child: Column(
            children: [
              Text(
                'French Apple Pie',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: AppColors.white
                ),
              ),
            ],
          ),
        ),
        // const Align(
        //   alignment: AlignmentDirectional.bottomStart,
        //   child: Column(
        //     children: [
        //
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
