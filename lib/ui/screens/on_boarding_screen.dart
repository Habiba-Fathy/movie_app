import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie/models/on_boarding_model.dart';
import 'package:movie/utils/extensions/extensions.dart';
import 'package:movie/utils/utils.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final CarouselController _buttonCarouselController = CarouselController();
  int _indicatorIndex = 0;

  final List<OnBoardingModel> data = [
    OnBoardingModel(
      title: 'Watch the most enjoyable movies at any time',
      asset: 'movie_night'.toSvg,
    ),
    OnBoardingModel(
      title: 'You can also download exclusive movies for free with your family',
      asset: 'news'.toSvg,
    ),
    OnBoardingModel(
      title: 'You can watch exclusive movies on the platform',
      asset: 'film_roll'.toSvg,
    ),
  ];

  next() {
    if (_indicatorIndex != 2) {
      _buttonCarouselController.nextPage();
    }
  }

  skip() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).scaffoldBackgroundColor,
                  Theme.of(context).shadowColor,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Column(
            children: [
              Utils.getHeight(context, 60).ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                          height: 24,
                          width: 24,
                          alignment: Alignment.center,
                          child: SvgPicture.asset('back'.toSvg)),
                    ),
                  ),
                  DotsIndicator(
                    dotsCount: data.length,
                    position: _indicatorIndex,
                    decorator: DotsDecorator(
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      activeSize: Size(Utils.getWidth(context, 22),
                          Utils.getWidth(context, 6)),
                      size: Size(Utils.getWidth(context, 22),
                          Utils.getWidth(context, 6)),
                      spacing: const EdgeInsets.symmetric(horizontal: 4),
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.45),
                      activeColor: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  InkWell(
                    onTap: skip,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 10),
                      child: Text(
                        'Skip',
                        style:
                            Theme.of(context).textTheme.headlineLarge?.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                      ),
                    ),
                  ),
                ],
              ),
              Utils.getHeight(context, 60).ph,
              CarouselSlider.builder(
                carouselController: _buttonCarouselController,
                options: CarouselOptions(
                  height: Utils.getHeight(context, 500),
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  scrollPhysics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (index, reason) {
                    setState(() {
                      _indicatorIndex = index;
                    });
                  },
                ),
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index, int i) {
                  return Column(
                    children: [
                      Expanded(
                        child: Text(
                          data[index].title,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                fontSize: 32,
                                fontWeight: FontWeight.w400,
                              ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      // Utils.getHeight(context, 50).ph,
                      SvgPicture.asset(
                        data[index].asset,
                        height: Utils.getHeight(context, 400),
                        // width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ],
                  );
                },
              ),
              Utils.getHeight(context, 74).ph,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: InkWell(
                  onTap: next,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 14, horizontal: 108),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Text(
                      'Next',
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
