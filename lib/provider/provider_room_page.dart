import 'package:ad_sehir/models/model_player.dart';
import 'package:ad_sehir/values.dart';
import 'package:flutter/material.dart';

class ProviderRoomPage with ChangeNotifier {
  List<ModelPlayer> players = [];

  List<ModelPlayer> get getPlayers => players;

  void addPlayer(ModelPlayer modelPlayer) {
    players.add(modelPlayer);
    notifyListeners();
  }

  void removePlayer(String id) {
    players.removeWhere((element) => element.id == id);
    notifyListeners();
  }
}
