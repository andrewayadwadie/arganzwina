class CatSingleProductById {
  final int id;
  final String name;
  final String description;
  final double price;
  final bool hasOffer;
  final double priceAfterOffer;
  final int quantity;
  final String photoPath;

  CatSingleProductById({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.hasOffer,
    required this.priceAfterOffer,
    required this.quantity,
    required this.photoPath,
  });

  factory CatSingleProductById.fromJson(Map<String, dynamic> jsonData) {
    return CatSingleProductById(
      id: jsonData['id'],
      name: jsonData['name'],
      description: jsonData['description'],
      photoPath: jsonData['photoPath'],
      hasOffer: jsonData['hasOffer'],
      price: jsonData['price'],
      quantity: jsonData['quantity'],
      priceAfterOffer: jsonData['priceAfterOffer'] ?? 0.0,
    );
  }
}

class CatSingleProduct {
  final int id;
  final String name;
  final String description;
  final double price;
  final bool hasOffer;
  final double priceAfterOffer;
  final int quantity;
  final String photoPath;

  CatSingleProduct({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.hasOffer,
    required this.priceAfterOffer,
    required this.quantity,
    required this.photoPath,
  });

  factory CatSingleProduct.fromJson(Map<String, dynamic> jsonData) {
    return CatSingleProduct(
      id: jsonData['id'],
      name: jsonData['name'],
      description: jsonData['description'],
      photoPath: jsonData['photoPath'],
      hasOffer: jsonData['hasOffer'],
      price: jsonData['price'],
      quantity: jsonData['quantity'],
      priceAfterOffer: jsonData['priceAfterOffer'],
    );
  }
}
