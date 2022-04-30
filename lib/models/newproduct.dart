 

// class NewProduct {
//   int? id;
//   String? brand;
//   String? name;
//   String? price;
//   dynamic priceSign;
//   dynamic currency;
//   String? imageLink;
//   String? productLink;
//   String? websiteLink;
//   String? description;
//   int? rating;
//   dynamic category;
//   String? productType;
//   List<dynamic>? tagList;
//   String? createdAt;
//   String? updatedAt;
//   String? productApiUrl;
//   String? apiFeaturedImage;
//   List<dynamic>? productColors;

//   NewProduct(
//       {this.id,
//       this.brand,
//       this.name,
//       this.price,
//       this.priceSign,
//       this.currency,
//       this.imageLink,
//       this.productLink,
//       this.websiteLink,
//       this.description,
//       this.rating,
//       this.category,
//       this.productType,
//       this.tagList,
//       this.createdAt,
//       this.updatedAt,
//       this.productApiUrl,
//       this.apiFeaturedImage,
//       this.productColors});

//   NewProduct.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     brand = json['brand'];
//     name = json['name'];
//     price = json['price'];
//     priceSign = json['price_sign'];
//     currency = json['currency'];
//     imageLink = json['image_link'];
//     productLink = json['product_link'];
//     websiteLink = json['website_link'];
//     description = json['description'];
//     rating = json['rating'];
//     category = json['category'];
//     productType = json['product_type'];
//     if (json['tag_list'] != null) {
//       tagList = <Null>[];
//       json['tag_list'].forEach((v) {
//         tagList!.add(new Null.fromJson(v));
//       });
//     }
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     productApiUrl = json['product_api_url'];
//     apiFeaturedImage = json['api_featured_image'];
//     if (json['product_colors'] != null) {
//       productColors = <Null>[];
//       json['product_colors'].forEach((v) {
//         productColors!.add(new Null.fromJson(v));
//       });
//     }
//   }

 
// }
// // To parse this JSON data, do
// //
// //     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

import 'package:get/get_rx/src/rx_types/rx_types.dart';

List<NewProduct> welcomeFromJson(String str) =>
 List<NewProduct>.from(json.decode(str).map((x) =>
  NewProduct.fromJson(x)));

//String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NewProduct {
    NewProduct({
        this.id,
        this.brand,
        required this.name,
        this.price,
        this.priceSign,
        this.currency,
        required this.imageLink,
        this.productLink,
        this.websiteLink,
        this.description,
        this.rating,
        this.category,
        this.productType,
        this.tagList,
        this.createdAt,
        this.updatedAt,
        this.productApiUrl,
        this.apiFeaturedImage,
        this.productColors,
    });

    int? id;
    Brand? brand;
    String name;
    String? price;
    dynamic priceSign;
    dynamic currency;
    String imageLink;
    String? productLink;
    String? websiteLink;
    String? description;
    double? rating;
    String? category;
    String? productType;
    List<dynamic>? tagList;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? productApiUrl;
    String? apiFeaturedImage;
    List<ProductColor>? productColors;
var isFavorite = false.obs;
    factory NewProduct.fromJson(Map<String, dynamic> json) => NewProduct(
        id: json["id"],
        brand: brandValues.map![json["brand"]],
        name: json["name"],
        price: json["price"],
        priceSign: json["price_sign"],
        currency: json["currency"],
        imageLink: json["image_link"],
        productLink: json["product_link"],
        websiteLink: json["website_link"],
        description: json["description"],
        rating: json["rating"] == null ? null : json["rating"].toDouble(),
        category: json["category"] == null ? null : json["category"],
        productType: json["product_type"],
        tagList: List<dynamic>.from(json["tag_list"].map((x) => x)),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        productApiUrl: json["product_api_url"],
        apiFeaturedImage: json["api_featured_image"],
        productColors: List<ProductColor>.from(json["product_colors"].map((x) => ProductColor.fromJson(x))),
    );

   
}

enum Brand { MAYBELLINE }

final brandValues = EnumValues({
    "maybelline": Brand.MAYBELLINE
});

class ProductColor {
    ProductColor({
       this.hexValue,
        this.colourName,
    });

    String? hexValue;
    String? colourName;

    factory ProductColor.fromJson(Map<String, dynamic> json) => ProductColor(
        hexValue: json["hex_value"],
        colourName: json["colour_name"] == null ? null : json["colour_name"],
    );

    Map<String, dynamic> toJson() => {
        "hex_value": hexValue,
        "colour_name": colourName == null ? null : colourName,
    };
}

class EnumValues<T> {
    Map<String, T>? map;
    Map<T, String>? reverseMap;

    EnumValues(this.map);

    Map<T, String>? get reverse {
        reverseMap ??= map?.map((k, v) => new MapEntry(v, k));
        return reverseMap;
    }
}
