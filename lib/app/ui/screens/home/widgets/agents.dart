import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorent_guide/app/data/providers/agents_provider.dart';

import '../../../../core/constants/agents_details.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_style.dart';
import '../../details/details.dart';

class Agents extends StatelessWidget {
  const Agents({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: AgentsDetails.agentsNames.length,
      itemBuilder: (context, index) {
        return Center(
          child: Container(
            width: 320,
            padding: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height,
            child: Consumer<AgentsProvider>(
              builder: (context, model, child) => InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  model.updteIndex(index);
                  model.getDispcription();
                  Navigator.pushNamed(context, Details.routeName);
                },
                child: Stack(
                  children: [
                    _buildBackgroundCard(index),
                    _buildAgentImage(index),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildBackgroundCard(int index) {
    return Center(
      child: Container(
        height: 430,
        width: 290,
        padding: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          gradient: AppColors.agentsBgColors[index],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(72),
            topRight: Radius.circular(24),
            bottomRight: Radius.circular(80),
          ),
        ),
        alignment: Alignment.bottomLeft,
        child: Text(
          AgentsDetails.agentsNames[index],
          style: AppStyles.titleLarge,
        ),
      ),
    );
  }

  Widget _buildAgentImage(int index) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 120),
            child: Image.asset(
              "assets/artworks/home_elements/agents/Artwork/agent ${index + 1}.png",
              height: 420,
            ),
          ),
        ],
      ),
    );
  }
}
