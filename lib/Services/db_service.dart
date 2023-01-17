// import 'package:flutter_app/models/products_model.dart';
// import 'package:flutter_app/utils/db_helper.dart';
//
// class DBService{
//   Future<List<ProductModel>> getProducts() async{
//     await DBHelper.init();
//
//     List<Map<String,dynamic>> products = await DBHelper.query(ProductModel.table);
//
//     return products.map((item) => ProductModel.fromMap(item)).toList();
//   }
//
//   Future<bool> addProducts(ProductModel model) async {
//     await DBHelper.init();
//
//     int ret = await DBHelper.insert(ProductModel.table, model);
//     return ret > 0 ? true : false;
//   }
//   Future<bool> updateProducts(ProductModel model) async {
//     await DBHelper.init();
//
//     int ret = await DBHelper.update(ProductModel.table, model);
//     return ret > 0 ? true : false;
//   }
//   Future<bool> deleteProducts(ProductModel model) async {
//     await DBHelper.init();
//
//     int ret = await DBHelper.delete(ProductModel.table, model);
//     return ret > 0 ? true : false;
//   }
// }
