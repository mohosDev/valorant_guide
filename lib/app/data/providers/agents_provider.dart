import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AgentsProvider extends ChangeNotifier {
  int originIndex = 0;
  String? agentDiscription;

  void updteIndex(int index) {
    originIndex = index;
    notifyListeners();
  }

  getDispcription() async {
    String data = await rootBundle.loadString(
        "assets/files/agents_details_descriptions/agent ${originIndex! + 1}.txt");
    agentDiscription = data;
    notifyListeners();
  }
}
