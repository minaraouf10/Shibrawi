import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/extensions/context_extensions.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';
import 'package:shibrawi/core/config/widgets/custom_sized_box.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            context.pushNamed(
              RouteNames.itemDetailsScreen,
            );
          },
          child: Stack(
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
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: const [0, 0.3],
                    colors: [
                      Colors.black.withOpacity(0.7799999713897705),
                      Colors.transparent
                    ],
                  ),
                ),
                child: Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(
                      start: 21,
                      bottom: 10.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'French Apple Pie',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white,
                          ),
                        ),
                        const Height(5.0),
                        Row(
                          children: [
                            Image.asset('assets/icons/orange_star.png'),
                            const Width(5.0),
                            const Text(
                              'Minute by tuk tuk esserts',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: AppColors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Height(8.0)
      ],
    );
  }
}
