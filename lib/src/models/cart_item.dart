class CartItem {
  String imageUrl;
  String name;
  double price;
  int qty;

  CartItem(this.imageUrl, this.name, this.price, this.qty);

  CartItem.fromMap(Map<String, dynamic> item) {
    imageUrl = item["imageUrl"];
    name = item["name"];
    price = item["price"];
    qty = item["qty"];
  }
}
