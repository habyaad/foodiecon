import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodiecon/app/data/common/widgets/custom_text.dart';
import 'package:foodiecon/app/data/utils/app_colors.dart';
import 'package:foodiecon/app/data/utils/string_utils.dart';
import 'package:foodiecon/app/modules/home/views/widgets/food_card.dart';
import 'package:get/get.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../../data/common/widgets/custom_bottom_navbar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: CustomBottomNavBar(
            parent: NavIdentifier.home,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    height: 230.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/home_picture.png"),
                            fit: BoxFit.cover,
                            alignment: Alignment.bottomCenter)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  title: "Your location",
                                  color: Colors.white,
                                  size: 14,
                                  weight: FontWeight.w400,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    CustomText(
                                      title: " Nigeria",
                                      color: Colors.white,
                                      size: 16,
                                      weight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                    style: const ButtonStyle(
                                      shape: WidgetStatePropertyAll<
                                              OutlinedBorder>(
                                          OvalBorder(
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Colors.white))),
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.notifications_none_outlined,
                                      color: Colors.white,
                                    ),
                                    style: const ButtonStyle(
                                      shape: WidgetStatePropertyAll<
                                              OutlinedBorder>(
                                          OvalBorder(
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Colors.white))),
                                    ))
                              ],
                            )
                          ],
                        ),
                        const CustomText(
                          title: "Provide the best \nfood for you",
                          color: Colors.white,
                          size: 32,
                          weight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              title: "Find by Category",
                              size: 16,
                              weight: FontWeight.w500,
                            ),
                            CustomText(
                              title: "See all",
                              color: AppColors.appOrange,
                              size: 14,
                              weight: FontWeight.w400,
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          height: 65.h,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  String item =
                                      controller.products.keys.toList()[index];

                                  return Obx(() {
                                    return GestureDetector(
                                      onTap: () {
                                        controller.setIndex(index);
                                      },
                                      child: Container(
                                        height: 65.h,
                                        width: 59.w,
                                        decoration: BoxDecoration(
                                            color: controller
                                                        .selectedIndex.value ==
                                                    index
                                                ? AppColors.appOrange
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: const Offset(0, 4),
                                                  blurRadius: 24,
                                                  color: const Color(0xFF111111)
                                                      .withOpacity(.14))
                                            ]),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Image.asset(
                                                controller.products[item]!),
                                            CustomText(
                                              title:
                                                  StringUtils.capitalize(item),
                                              color: controller.selectedIndex
                                                          .value ==
                                                      index
                                                  ? Colors.white
                                                  : AppColors.appGrey2,
                                              size: 14,
                                              weight: FontWeight.w400,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                                },
                                separatorBuilder: (ctx, idx) => SizedBox(
                                      width: 30.w,
                                    ),
                                itemCount: 4),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        ResponsiveGridList(
                            horizontalGridSpacing: 22,
                            verticalGridSpacing: 16,
                            horizontalGridMargin: 0,
                            verticalGridMargin: 0,
                            minItemWidth: 153,
                            minItemsPerRow: 2,
                            maxItemsPerRow: 5,
                            listViewBuilderOptions: ListViewBuilderOptions(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics()),
                            children: List.generate(
                              6,
                              (index) => const FoodCard(),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
