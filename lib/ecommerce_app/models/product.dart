class Rating{
  num? rate;
  num? count;
  Rating({this.rate, this.count});
  Rating.fromJson(Map<String , dynamic> json){
    rate = json['rate'];
    count = json['count'];
  }
}



class Product {
  int? id;
  String? title;
  num? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;
  Product(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image,
      this.rating});

  Product.fromJson(Map<String , dynamic> json){
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
    rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;
  }

}