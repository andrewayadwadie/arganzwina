class SingleCartItemModel {
  final int id;
  final String name;
  final double price;
  final int quantity;
  final String photoPath;

  SingleCartItemModel({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
    required this.photoPath,
  });

  factory SingleCartItemModel.fromJson(Map<String, dynamic> jsonData) {
    return SingleCartItemModel(
      id: jsonData['id'],
      name: jsonData['name'],
      photoPath: jsonData['photoPath'],
      price: jsonData['price'],
      quantity: jsonData['quantity'],
     
    );
  }
}
