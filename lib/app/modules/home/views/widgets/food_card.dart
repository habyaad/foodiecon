import 'package:flutter/material.dart';

import '../../../../data/common/widgets/custom_text.dart';
import '../../../../data/utils/app_colors.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 153,
      height: 204,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                offset: const Offset(6, 6),
                blurRadius: 60,
                color: Colors.black.withOpacity(0.04))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            height: 106,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                  image: AssetImage("assets/images/burger_image.png"),
                  fit: BoxFit.cover),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {},
                  color: Colors.white,
                  icon: const Icon(
                    Icons.favorite_border,
                    color: AppColors.appRed,
                  ),
                  style: const ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll<Color>(Colors.white),
                    shape: WidgetStatePropertyAll<OutlinedBorder>(OvalBorder(
                        side: BorderSide(width: 1, color: Colors.white))),
                  )),
            ),
          ),
          const CustomText(
            title: "Ordinary Burgers",
            weight: FontWeight.w500,
            size: 16,
            overflow: TextOverflow.ellipsis,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: AppColors.appOrange,
                    size: 16,
                  ),
                  CustomText(
                    title: " 4.9",
                    weight: FontWeight.w500,
                    size: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: AppColors.appOrange,
                    size: 16,
                  ),
                  CustomText(
                    title: " 190m",
                    weight: FontWeight.w500,
                    size: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
          const CustomText(
            title: "\$ 17,230",
            weight: FontWeight.w700,
            size: 16,
            color: AppColors.appOrange,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
