import 'package:flutter/material.dart';
import 'package:valorent_guide/app/core/constants/app_colors.dart';
import 'package:valorent_guide/app/core/constants/app_style.dart';
import 'package:valorent_guide/app/core/constants/weapons_details.dart';

class Weapons extends StatelessWidget {
  const Weapons({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: WeaponsDetails.weaponsNames.length,
      itemBuilder: (context, index) {
        return Center(
          child: Container(
              margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width * 0.95,
              height: 180,
              child: index % 2 == 0
                  ? _buildStackWeaponRight(context, index)
                  : _buildStackWeaponLeft(context, index)),
        );
      },
    );
  }

  Stack _buildStackWeaponRight(BuildContext context, int index) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.only(top: 30, left: 10),
            width: (MediaQuery.of(context).size.width * 0.95) - 20,
            height: 126,
            decoration: BoxDecoration(
              color: AppColors.weaponsColorDark,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  WeaponsDetails.weaponsNames[index],
                  style: AppStyles.titleLarge,
                ),
                Text(
                  WeaponsDetails.weaponsCategories[index],
                  style: AppStyles.bodySmall,
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 10),
          alignment: Alignment.centerRight,
          child: Transform.rotate(
            angle: 0.3,
            child: Image(
                height: 90,
                image: AssetImage(
                    "assets/artworks/home_elements/weapons/${index + 1}.png")),
          ),
        )
      ],
    );
  }

  Stack _buildStackWeaponLeft(BuildContext context, int index) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.only(top: 30, right: 10),
            width: (MediaQuery.of(context).size.width * 0.95) - 20,
            height: 126,
            decoration: BoxDecoration(
              color: AppColors.weaponsColorDark,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  WeaponsDetails.weaponsNames[index],
                  style: AppStyles.titleLarge,
                ),
                Text(
                  WeaponsDetails.weaponsCategories[index],
                  style: AppStyles.bodySmall,
                ),
              ],
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            child: Transform.flip(
              flipX: true,
              child: Transform.rotate(
                angle: 0.3,
                child: Image(
                    height: 80,
                    image: AssetImage(
                        "assets/artworks/home_elements/weapons/${index + 1}.png")),
              ),
            ))
      ],
    );
  }
}
