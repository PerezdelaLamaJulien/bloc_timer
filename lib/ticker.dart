/// Une classe Ticker qui permet de renvoyer un int qui passe d'abord dans une fonction
/// (tout les secondes ont décrémente le nombre de ticks passés en paramètres)
class Ticker {
  Stream<int> tick({int ticks}) {
    return Stream.periodic(Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks);
  }
}
