import 'package:e_commerce/Featured/Bag/presentation/views/bag_view.dart';
import 'package:e_commerce/Featured/Favorites/presentation/views/favorites_view.dart';
import 'package:e_commerce/Featured/Home/presentation/Views/homeview.dart';
import 'package:e_commerce/Featured/Profile/presentation/views/profile_view.dart';
import 'package:e_commerce/Featured/Shop/presentation/views/shop_view.dart';
import 'package:e_commerce/constnts.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Homeview(),
    ShopView(),
    BagView(),
    FavoritesView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: KbackgroundColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: KprimaryColor,
            unselectedItemColor: Colors.grey,
            selectedFontSize: 13,
            unselectedFontSize: 11,
            showUnselectedLabels: true,
            items: List.generate(5, (index) {
              final icons = [
                Icons.home_outlined,
                Icons.store_outlined,
                Icons.shopping_bag_outlined,
                Icons.favorite_border_outlined,
                Icons.person_2_outlined
              ];
              final labels = ["Home", "Shop", "Bag", "Favorites", "Profile"];
      
              return BottomNavigationBarItem(
                icon: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  transform: Matrix4.translationValues(
                    0,
                    _currentIndex == index ? -8 : 0,
                    0,
                  ),
                  child: Icon(
                    icons[index],
                    size: _currentIndex == index ? 30 : 24,
                    color: _currentIndex == index ? KprimaryColor : Colors.grey,
                  ),
                ),
                label: labels[index],
              );
            }),
          ),
        ),
      ),
    );
  }
}
