import 'package:flutter/material.dart';
import 'package:valorent_guide/app/core/constants/app_style.dart';
import 'package:valorent_guide/app/core/constants/maps_details.dart';

class Maps extends StatelessWidget {
  const Maps({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: MapsDetails.mapsNames.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Stack(
            children: [
              _buildMapThumbnail(index),
              _buildMapName(index),
              _buildMiniMap(index),
            ],
          ),
        );
      },
    );
  }

  Widget _buildMapThumbnail(int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        "assets/artworks/home_elements/maps/map_thumbnails/${index + 1}.png",
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildMapName(int index) {
    return Positioned(
      top: 10,
      left: 10,
      child: Text(
        MapsDetails.mapsNames[index],
        style: AppStyles.titleLarge,
      ),
    );
  }

  Widget _buildMiniMap(int index) {
    return Positioned(
      right: 10,
      top: 20,
      child: Image.asset(
        "assets/artworks/home_elements/maps/mini_maps/${index + 1}.png",
        height: 200,
      ),
    );
  }
}
