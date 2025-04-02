
import '../model/pancakes _model.dart';

class PancakesDto {
  static Pancake fromJson(String id, Map<String, dynamic> json) {
    return Pancake(id: id, name: json['name'], price: json['price']);
  }

  static Map<String, dynamic> toJson(Pancake pancakes) {
    return {'name': pancakes.name, 'price': pancakes.price};
  }
}
