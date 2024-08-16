import 'package:flutter/material.dart';
import 'package:valorent_guide/app/core/constants/app_assets.dart';
import 'package:valorent_guide/app/core/constants/app_colors.dart';
import 'package:valorent_guide/app/ui/screens/home/widgets/agents.dart';
import 'package:valorent_guide/app/ui/screens/home/widgets/maps.dart';
import 'package:valorent_guide/app/ui/screens/home/widgets/weapons.dart';

import '../../../core/constants/app_style.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  static String routeName = "homePage";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.bgColorDark,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 180,
          backgroundColor: AppColors.bgColorDark,
          title: Center(
            child: Column(
              children: [
                Image(
                  image: AssetImage(
                    AppAssets.logoPathHome,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Image(
                  image: AssetImage(
                    AppAssets.textPathHome,
                  ),
                ),
              ],
            ),
          ),
          bottom: buildTabBar(context),
        ),
        body: TabBarView(
          children: [
            Agents(),
            Maps(),
            Weapons(),
          ],
        ),
      ),
    );
  }

  TabBar buildTabBar(BuildContext context) {
    return TabBar(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      labelStyle: AppStyles.bodyMid,
      indicator: BoxDecoration(
        color: AppColors.tabColorDark,
        borderRadius: BorderRadius.circular(14),
      ),
      tabs: [
        Tab(
          child: Center(
            child: buildTabContainer(context, 'Agents'),
          ),
        ),
        Tab(
          child: Center(
            child: buildTabContainer(context, 'Maps'),
          ),
        ),
        Tab(
          child: Center(
            child: buildTabContainer(context, 'Weapons'),
          ),
        ),
      ],
    );
  }

  Container buildTabContainer(BuildContext context, String text) {
    return Container(
      alignment: Alignment.center,
      width: (MediaQuery.of(context).size.width - 5) / 3,
      child: Text(text),
    );
  }
}
