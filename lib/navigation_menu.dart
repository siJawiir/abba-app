import 'package:abba_app/features/dashboard/dashboard.dart';
import 'package:abba_app/utils/constants/colors.dart';
import 'package:abba_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = MyHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor:
              dark ? MyColors.darkContainer : MyColors.lightContainer,
          indicatorColor: dark
              ? MyColors.light.withOpacity(0.1)
              : MyColors.dark.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home_2), label: "Beranda"),
            NavigationDestination(icon: Icon(Iconsax.save_2), label: "Draft"),
            NavigationDestination(icon: Icon(Iconsax.user4), label: "Profil"),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const DashboardScreen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.red,
    ),
  ];
}
