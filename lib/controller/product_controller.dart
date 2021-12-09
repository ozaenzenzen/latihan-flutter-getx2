import 'package:flutter_getx_2/model/product_model.dart';
import 'package:get/state_manager.dart';

class ProductController extends GetxController {
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
  ].obs;

  get items{
    return [..._items].obs;
  }
}
