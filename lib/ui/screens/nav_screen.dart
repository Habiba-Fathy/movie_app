import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie/ui/screens/nav_screens/favourite_screen.dart';
import 'package:movie/ui/screens/nav_screens/home_screen.dart';
import 'package:movie/ui/screens/nav_screens/profile_screen.dart';
import 'package:movie/ui/screens/nav_screens/search_screen.dart';
import 'package:movie/utils/extensions/extensions.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key, this.index}) : super(key: key);

  final int? index;

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  late List<Widget> _widgetOptions = <Widget>[];

  int index = 0;

  @override
  void initState() {
    super.initState();
    // final user = context.read<AuthProvider>().currentUser;

    _widgetOptions = <Widget>[
      const HomeScreen(),
      const SearchScreen(),
      const FavouriteScreen(),
      const ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // final user = context.select((AuthProvider a) => a.currentUser);
    // final index = context.watch<NavigationIndexProvider>().index;

    return Scaffold(
      body: _widgetOptions.elementAt(index),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).dividerColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            backgroundColor: Theme.of(context).dividerColor,
            elevation: 0,
            iconSize: 24,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle:
                Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
            unselectedLabelStyle:
                Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
            items: [
              BottomNavigationBarItem(
                activeIcon: Container(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'home'.toSvg,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                icon: Container(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'home'.toSvg,
                    color: Theme.of(context).shadowColor,
                  ),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                activeIcon: Container(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'search'.toSvg,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                icon: Container(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'search'.toSvg,
                    color: Theme.of(context).shadowColor,
                  ),
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                activeIcon: Container(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'favourite'.toSvg,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                icon: Container(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'favourite'.toSvg,
                    color: Theme.of(context).shadowColor,
                  ),
                ),
                label: 'Favourite',
              ),
              BottomNavigationBarItem(
                activeIcon: Container(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'profile'.toSvg,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                icon: Container(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'profile'.toSvg,
                    color: Theme.of(context).shadowColor,
                  ),
                ),
                label: 'Profile',
              ),
            ],
            currentIndex: index,
            onTap: (index) {
              this.index = index;
              // context.read<NavigationIndexProvider>().changeIndex(index);
              if (mounted) setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
