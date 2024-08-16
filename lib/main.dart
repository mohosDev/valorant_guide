import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorent_guide/app/data/providers/agents_provider.dart';
import 'package:valorent_guide/app/ui/screens/home/home.dart';
import 'package:valorent_guide/app/ui/screens/splash/splash.dart';

import 'app/ui/screens/details/details.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => AgentsProvider(),
    child: ValorantGuide(),
  ));
}

class ValorantGuide extends StatelessWidget {
  const ValorantGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splash(),
      routes: {
        Splash.routeName: (context) => const Splash(),
        Home.routeName: (context) => const Home(),
        Details.routeName: (context) => const Details(),
      },
    );
  }
}
