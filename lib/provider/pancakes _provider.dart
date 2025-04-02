import 'package:flutter/material.dart';
import 'package:flutter_hw2/model/pancakes%20_model.dart';
import 'package:flutter_hw2/provider/async_value.dart';
import 'package:flutter_hw2/repository/pancakes%20_repository.dart';

class Pancakeprovider extends ChangeNotifier {
  final PancakeRepository _repository;
  AsyncValue<List<Pancake>>? pancakesState;

  Pancakeprovider(this._repository) {
    fetchUsers();
  }

  bool get isLoading =>
      pancakesState != null && pancakesState!.state == AsyncValueState.loading;
  bool get hasData =>
      pancakesState != null && pancakesState!.state == AsyncValueState.success;

  void fetchUsers() async {
    try {
      // 1- loading state
      pancakesState = AsyncValue.loading();
      notifyListeners();

      // 2 - Fetch users
      pancakesState = AsyncValue.success(await _repository.getPancakes());

      print("SUCCESS: list size ${pancakesState!.data!.length.toString()}");

      // 3 - Handle errors
    } catch (error) {
      print("ERROR: $error");
      pancakesState = AsyncValue.error(error);
    }

    notifyListeners();
  }
    void addPancake(String name, double price) async {
    // 1- Call repo to add
    _repository.addPancake(name: name, price: price);

    // 2- Call repo to fetch
    fetchUsers();
  }
}
