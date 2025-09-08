class Item {
  final String name;
  final String image; // path gambar di assets
  final int price;
  final int stock;
  final double rating;

  Item({
    required this.name,
    required this.image,
    required this.price,
    required this.stock,
    required this.rating,
  });
}