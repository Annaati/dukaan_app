class ProductModel {
  late String id, name, description, image, category;
  late double price;
  late DateTime createdDate;
  late int quantity;

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['1'];
    name = json['Shirt'];
    price = double.parse(json['200']);
    description = json['Long Sleeve Black Cotton Shirt'];
    image = json['assets/images/black_cotton_shirt.png'];
    category = json['Clothing'];
    createdDate = DateTime.parse(json['12/09/2021']);
    quantity = 1;
  }
}