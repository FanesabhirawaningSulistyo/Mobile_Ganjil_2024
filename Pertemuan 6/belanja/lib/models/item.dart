// class Item {
//   String name;
//   int price;
//   Item({required this.name, required this.price});
// }
//==================================================
// class Item {
//   String name;
//   int price;
//   String imageUrl; // URL foto produk
//   int stock; // Stok produk
//   double rating; // Rating produk (dari 0.0 hingga 5.0)

//   Item({
//     required this.name,
//     required this.price,
//     required this.imageUrl,
//     required this.stock,
//     required this.rating,
//   });
// }
//==================================================

class Item {
  final String name;
  final double price;
  final String imageUrl;
  final int stock;
  final double rating;

  Item({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.stock,
    required this.rating,
  });
}

