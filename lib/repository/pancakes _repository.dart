import 'package:flutter_hw2/model/pancakes%20_model.dart';

abstract class PancakeRepository {
  Future<Pancake> addPancake({required String name, required double price});
  Future<List<Pancake>> getPancakes();
  Future<void> removePancake(String id);
}
