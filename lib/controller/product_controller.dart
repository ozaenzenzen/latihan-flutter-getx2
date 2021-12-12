import 'package:flutter_getx_2/model/product_model.dart';
import 'package:get/state_manager.dart';
import 'package:mock_data/mock_data.dart';

class ProductController extends GetxController {
  final List<ProductModel> data = [];

  ProductController() {
    for (var i = 0; i < 20; i++) {
      data.add(
        ProductModel(
          id: "${mockInteger(1, 6)}",
          name: mockName('male'),
          description: mockString(10),
          picture: mockString(20),
        ),
      );
    }
  }

  final List<ProductModel> _items = [
    ProductModel(
      id: "0s0s0s0",
      name: "name",
      description: "ss",
      picture: "ssss",
    ),
    ProductModel(
      id: "0s0s0s0",
      name: "name",
      description: "ss",
      picture: "ssss",
    ),
    ProductModel(
      id: "0s0s0s0",
      name: "name",
      description: "ss",
      picture: "ssss",
    ),
    ProductModel(
      id: "0s0s0s0",
      name: "name",
      description: "ss",
      picture: "ssss",
    ),
    ProductModel(
      id: "0s0s0s0",
      name: "name",
      description: "ss",
      picture: "ssss",
    ),
    ProductModel(
      id: "0s0s0s0",
      name: "name",
      description: "ss",
      picture: "ssss",
    ),
    ProductModel(
      id: "0s0s0s0",
      name: "name",
      description: "ss",
      picture: "ssss",
    ),
    ProductModel(
      id: "0s0s0s0",
      name: "name",
      description: "ss",
      picture: "ssss",
    ),
    ProductModel(
      id: "0s0s0s0",
      name: "name",
      description: "ss",
      picture: "ssss",
    ),
    ProductModel(
      id: "0s0s0s0",
      name: "name",
      description: "ss",
      picture: "ssss",
    ),
    ProductModel(
      id: "0s0s0s0",
      name: "name",
      description: "ss",
      picture: "ssss",
    ),
    ProductModel(
      id: "0s0s0s0",
      name: "name",
      description: "ss",
      picture: "ssss",
    ),
    ProductModel(
      id: "0s0s0s0",
      name: "name",
      description: "ss",
      picture: "ssss",
    ),
    ProductModel(
      id: "0s0s0s0",
      name: "name",
      description: "ss",
      picture: "ssss",
    ),
    ProductModel(
      id: "0s0s0s0",
      name: "name",
      description: "ss",
      picture: "ssss",
    ),
    ProductModel(
      id: "0s0s0s0",
      name: "name",
      description: "ss",
      picture: "ssss",
    ),
    ProductModel(
      id: "0s0s0s0",
      name: "name",
      description: "ss",
      picture: "ssss",
    ),
  ];

  get items {
    return [..._items].obs;
  }
}
