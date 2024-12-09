import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/screens/account/view/account_view.dart';
import 'package:lafyuu_e_commerce_app/screens/cart/view/cart_view.dart';
import 'package:lafyuu_e_commerce_app/screens/explore/view/explore_view.dart';
import 'package:lafyuu_e_commerce_app/screens/main_screen/view/main_screen_view.dart';
import 'package:lafyuu_e_commerce_app/screens/offer/view/offer_widgets.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class MainScreenTabView extends StatefulWidget {
  const MainScreenTabView({super.key, required this.appTheme});

  final AppTheme appTheme;

  @override
  State<MainScreenTabView> createState() => _MainScreenTabViewState();
}

class _MainScreenTabViewState extends State<MainScreenTabView> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 675,
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: <Widget>[
                MainScreenView(appTheme: widget.appTheme),
                ExploreView(appTheme: widget.appTheme),
                CartView(appTheme: widget.appTheme),
                OfferView(appTheme: widget.appTheme),
                AccountView(appTheme: widget.appTheme),
              ],
            ),
          ),
          Expanded(
            flex: 87,
            child: MainScreenBottomNavigationBar(
                onItemTapped: _onItemTapped, appTheme: widget.appTheme, selectedIndex: _selectedIndex),
          ),
        ],
      ),
    );
  }
}

class MainScreenBottomNavigationBar extends StatefulWidget {
  const MainScreenBottomNavigationBar({
    super.key,
    required this.onItemTapped,
    required this.appTheme,
    required this.selectedIndex,
  });

  final Function(int) onItemTapped;
  final AppTheme appTheme;
  final int selectedIndex;

  @override
  State<MainScreenBottomNavigationBar> createState() => _MainScreenBottomNavigationBarState();
}

class _MainScreenBottomNavigationBarState extends State<MainScreenBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Divider(
            height: 1,
            color: widget.appTheme.neutralLight,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: widget.appTheme.heightDynamicPadding16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MainScreenNavItem(
                  icon: Icons.home,
                  label: "Home",
                  index: 0,
                  isSelected: widget.selectedIndex == 0,
                  onTap: () => widget.onItemTapped(0),
                  appTheme: widget.appTheme,
                ),
                MainScreenNavItem(
                  icon: Icons.search,
                  label: "Explore",
                  index: 1,
                  isSelected: widget.selectedIndex == 1,
                  onTap: () => widget.onItemTapped(1),
                  appTheme: widget.appTheme,
                ),
                MainScreenNavItem(
                  icon: Icons.shopping_cart_outlined,
                  label: "Cart",
                  index: 2,
                  isSelected: widget.selectedIndex == 2,
                  onTap: () => widget.onItemTapped(2),
                  appTheme: widget.appTheme,
                ),
                MainScreenNavItem(
                  icon: Icons.discount,
                  label: "Offer",
                  index: 3,
                  isSelected: widget.selectedIndex == 3,
                  onTap: () => widget.onItemTapped(3),
                  appTheme: widget.appTheme,
                ),
                MainScreenNavItem(
                  icon: Icons.person_outline,
                  label: "Account",
                  index: 4,
                  isSelected: widget.selectedIndex == 4,
                  onTap: () => widget.onItemTapped(4),
                  appTheme: widget.appTheme,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MainScreenNavItem extends StatelessWidget {
  const MainScreenNavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.index,
    required this.isSelected,
    required this.onTap,
    required this.appTheme,
  });

  final IconData icon;
  final String label;
  final int index;
  final bool isSelected;
  final VoidCallback onTap;
  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icon,
            color: isSelected ? appTheme.primaryBlue : appTheme.neutralGrey,
          ),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? appTheme.primaryBlue : appTheme.neutralGrey,
            ),
          ),
        ],
      ),
    );
  }
}
