
import 'dart:ffi';

class ProductModel {
  int? id;
  String? name;
  String? title;
  int? categoryId;
  String? description;
  int? price;
  int? discount;
  String? discountType;
  String? currency;
  int? inStock;
  String? avatar;
  double? priceFinal;
  String? priceFinalText;

  ProductModel(
      {this.id,
        this.name,
        this.title,
        this.categoryId,
        this.description,
        this.price,
        this.discount,
        this.discountType,
        this.currency,
        this.inStock,
        this.avatar,
        this.priceFinal,
        this.priceFinalText});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    title = json['title'];
    categoryId = json['category_id'];
    description = json['description'];
    price = json['price'];
    discount = json['discount'];
    discountType = json['discount_type'];
    currency = json['currency'];
    inStock = json['in_stock'];
    avatar = json['avatar'];
    if(json['price_final'] != null){
      priceFinal =json['price_final'].toDouble();
    }

    priceFinalText = json['price_final_text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['title'] = title;
    data['category_id'] = categoryId;
    data['description'] = description;
    data['price'] = price;
    data['discount'] = discount;
    data['discount_type'] = discountType;
    data['currency'] = currency;
    data['in_stock'] = inStock;
    data['avatar'] = avatar;
    data['price_final'] = priceFinal;
    data['price_final_text'] = priceFinalText;
    return data;
  }
}