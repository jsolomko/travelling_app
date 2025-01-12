void main() {
  Catalog(cart: Cart());
}

class Item {
  Item(int id, String name);
}

class ItemViewModel {}

class Catalog {
  Cart cart;

  Catalog({required this.cart});

  List<Item> items = [Item(1, "name1"), Item(2, "name2"), Item(3, "name1")];

  onItemTap(Item item) {
    cart.itemsInCart.add(item);
  }
}

class Cart {
  List<Item> itemsInCart = [];

  onRemoveItemTap(Item item) {}
}
