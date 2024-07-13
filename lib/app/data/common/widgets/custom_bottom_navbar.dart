import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../utils/app_colors.dart';
import '../../utils/string_utils.dart';


enum NavIdentifier { home, cart, chat, profile }

class CustomBottomNavBar extends StatelessWidget {
  final Widget child;
  final NavIdentifier parent;

  const CustomBottomNavBar(
      {super.key, required this.child, required this.parent});

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(parent.name);
    }
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(child: child),
          _CustomBottomNavBar(
            parent: parent,
          )
        ],
      ),
    );
  }
}

class _CustomBottomNavBar extends StatelessWidget {
  final NavIdentifier parent;

  const _CustomBottomNavBar({required this.parent});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 40,
                offset: const Offset(0, 0))
          ]),
      width: MediaQuery.of(context).size.width,
      height: 92.h,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List<Widget>.generate(NavItem.navItems.length, (index) {
              bool isActive = NavItem.navItems[index].identifier == parent;
              return InkWell(
                onTap: () => isActive
                    ? null
                    : Get.offAndToNamed(NavItem.navItems[index].route),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                        "assets/svgs/${NavItem.navItems[index].icon}.svg",
                        colorFilter: ColorFilter.mode(
                            isActive
                                ? AppColors.appOrange
                                : AppColors.appGrey,
                            BlendMode.srcIn)),
                    const SizedBox(height: 4,),
                    Text(
                      StringUtils.capitalize(
                          NavItem.navItems[index].identifier.name),
                      style: TextStyle(
                          color: isActive
                              ? AppColors.appOrange
                              : Colors.transparent,
                          fontSize: 12.w,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class NavItem {
  final String route;
  final NavIdentifier identifier;
  final String icon;

  NavItem({
    required this.route,
    required this.identifier,
    required this.icon,
  });

  static List<NavItem> navItems = [home, cart, chat, profile];

  static NavItem home = NavItem(
      route: '/home',
      identifier: NavIdentifier.home,
      icon: "home");
  static NavItem cart = NavItem(
      route: '/cart',
      identifier: NavIdentifier.cart,
      icon: "cart");
  static NavItem chat = NavItem(
      route: '/chat',
      identifier: NavIdentifier.chat,
      icon: "chat");
  static NavItem profile = NavItem(
      route: '/profile',
      identifier: NavIdentifier.profile,
      icon: "profile");
}