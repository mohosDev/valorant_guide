import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorent_guide/app/core/constants/agents_details.dart';
import 'package:valorent_guide/app/core/constants/app_colors.dart';
import 'package:valorent_guide/app/core/constants/app_style.dart';
import 'package:valorent_guide/app/data/providers/agents_provider.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  static String routeName = 'detailsPage';

  @override
  Widget build(BuildContext context) {
    return Consumer<AgentsProvider>(
      builder: (context, model, child) => Scaffold(
        backgroundColor: AppColors.bgColorDark,
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColors.mainTextColorDark),
          scrolledUnderElevation: 0,
          backgroundColor: AppColors.bgColorDark,
          title: Text(
            AgentsDetails.agentsNames[model.originIndex],
            style: AppStyles.titleMid,
          ),
          centerTitle: true,
          actions: [
            Container(
              padding: const EdgeInsets.only(right: 10),
              child: Image(
                height: 40,
                image: AssetImage(
                  "assets/artworks/details_page_elements/categories/${AgentsDetails.agentsNamesMap[AgentsDetails.agentsNames[model.originIndex]]}.png",
                ),
              ),
            )
          ],
        ),
        body: Center(
            child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  Image(
                    height: 500,
                    image: AssetImage(
                        "assets/artworks/details_page_elements/image ${model.originIndex + 1}.png"),
                  ),
                  Image(
                    height: 500,
                    image: AssetImage(
                        "assets/artworks/home_elements/agents/Artwork/agent ${model.originIndex + 1}.png"),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "description",
                          style: AppStyles.titleMid,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          model.agentDiscription!,
                          style: AppStyles.bodyMid,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Abilities",
                          style: AppStyles.titleMid,
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            image: AssetImage(
                              "assets/artworks/details_page_elements/Abilities/1.png",
                            ),
                          ),
                          Image(
                            image: AssetImage(
                              "assets/artworks/details_page_elements/Abilities/2.png",
                            ),
                          ),
                          Image(
                            image: AssetImage(
                              "assets/artworks/details_page_elements/Abilities/3.png",
                            ),
                          ),
                          Image(
                            image: AssetImage(
                              "assets/artworks/details_page_elements/Abilities/4.png",
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
