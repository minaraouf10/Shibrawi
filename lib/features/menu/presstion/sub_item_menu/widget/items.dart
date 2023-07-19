import 'package:flutter/material.dart';
import 'package:shibrawi/core/config/themes/app_colors.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

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
                //'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn4Hs0kj95V9ps8mM_FSGBRxA3G0uNED5fKCblBonxC4U4ngNky2HdytC93umfhrpHXyo&usqp=CAU',
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
        Stack(
          children: [
            Image.network(
              //'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn4Hs0kj95V9ps8mM_FSGBRxA3G0uNED5fKCblBonxC4U4ngNky2HdytC93umfhrpHXyo&usqp=CAU',
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
