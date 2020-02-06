class User {
  int id;
  String user = '';
  String position = '';

  void save() {
    print('save form');
  }
}

class Balances {
  static bool debit;
  static bool credit;

  int id;
  int amount;
  String description;
  Map balancetype = {
    debit: false,
    credit: false
  };
}