class Iconss {
  static get customerIcon => 'customer-support'.png;
  static get shopIcon => 'shop'.png;
  static get shoppingIcon => 'shopping-bag'.png;
}

extension on String {
  String get png => 'assets/icons/$this.png';
}