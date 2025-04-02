import 'package:flutter_hw2/model/pancakes%20_model.dart';
import 'package:flutter_hw2/repository/pancakes%20_repository.dart';

class MockPancakeRepository extends PancakeRepository {
  final List<Pancake> pancakes = [];

  @override
  Future<Pancake> addPancake({required String name, required double price}) {
    return Future.delayed(Duration(seconds: 1), () {
      Pancake newPancake = Pancake(id: "0", name: 'choco', price: 12);
      pancakes.add(newPancake);
      return newPancake;
    });
  }

  @override
  Future<List<Pancake>> getPancakes() {
    return Future.delayed(Duration(seconds: 1), () => pancakes);
  }

  @override
  Future<void> removePancake(String id) {
    // TODO: implement removePancake
    throw UnimplementedError();
  }
}
