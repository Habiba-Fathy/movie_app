import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie/utils/constants/colors_palette.dart';
import 'package:movie/utils/extensions/extensions.dart';
import 'package:movie/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).shadowColor,
            ColorsPalette.gradientColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          40.ph,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('filter'.toSvg),
                SvgPicture.asset('settings'.toSvg),
              ],
            ),
          ),
          8.ph,
          Expanded(
            child: ListView(
              children: [
                8.ph,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Trending ',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic,
                              ),
                        ),
                        TextSpan(
                          text: 'Movies',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                39.ph,
                SizedBox(
                  height: Utils.getHeight(context, 225),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    itemCount: 3,
                    itemBuilder: (context, index) => Container(
                      padding: const EdgeInsets.all(27),
                      height: Utils.getHeight(context, 225),
                      width: Utils.getWidth(context, 280),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(33),
                        image: DecorationImage(
                          image: AssetImage('film'.toImage),
                        ),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Avatar 3',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                              9.ph,
                              Text(
                                '2023',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) => 10.pw,
                  ),
                ),
                39.ph,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Category',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
                42.ph,
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 10),
                        decoration: BoxDecoration(
                          color: ColorsPalette.goldColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context)
                                  .shadowColor
                                  .withOpacity(0.25),
                              offset: const Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Text(
                          'All',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ),
                      28.pw,
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 10),
                        decoration: BoxDecoration(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'Action',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ),
                      28.pw,
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 10),
                        decoration: BoxDecoration(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'Comedy',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                42.ph,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Text(
                        'Top Rated',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      12.pw,
                      SvgPicture.asset('star_broken'.toSvg),
                    ],
                  ),
                ),
                39.ph,
                SizedBox(
                  height: Utils.getHeight(context, 200),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    itemCount: 3,
                    separatorBuilder: (context, index) => 30.pw,
                    itemBuilder: (context, index) => Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          height: Utils.getHeight(context, 200),
                          width: Utils.getWidth(context, 190),
                          foregroundDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(33),
                            color:
                                Theme.of(context).shadowColor.withOpacity(0.56),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(33),
                            image: DecorationImage(
                                image: AssetImage('image2'.toImage),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              SvgPicture.asset('star_broken'.toSvg),
                              4.pw,
                              Text(
                                '8.0',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                30.ph,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
