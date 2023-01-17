// import 'package:flutter_app/pages/add_edit_product.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_app/models/products_model.dart';
// import 'package:flutter_app/services/db_service.dart';
// import 'package:snippet_coder_utils/FormHelper.dart';
// import 'package:snippet_coder_utils/list_helper.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   DBService dbService = DBService();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueAccent,
//         title: Text("Flutter SQFlite Crud"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Column(
//           children: [
//             Align(
//               alignment : Alignment.centerRight,
//               child: FormHelper.submitButton(
//                 "Add",
//                     (){
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const AddEditProductPage(),
//                     ),
//                   );
//                 },
//                 borderRadius: 10,
//                 btnColor: Colors.lightBlue,
//                 borderColor: Colors.lightBlue,
//               ),
//             ),
//             SizedBox(height: 10,),
//             _fetchData(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   _fetchData(){
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: FutureBuilder<List<ProductModel>>(
//         future: dbService.getProducts(),
//         builder:
//             (BuildContext context, AsyncSnapshot<List<ProductModel>> products){
//           if(products.hasData){
//             return _buildDataTable(products.data!);
//           }
//           return const Center(child: CircularProgressIndicator());
//         },
//       ),
//     );
//   }
//
//   _buildDataTable(List<ProductModel> model){
//     return ListUtils.buildDataTable(
//       context,
//       ["Name","Price",""],
//       ["productName","price",""],
//       false,
//       0,
//       model,
//           (ProductModel data){
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => AddEditProductPage(
//               model: data,
//               isEditModel: true,
//             ),
//           ),
//         );
//       },
//           (ProductModel data){
//         return
//           showDialog(context: context,
//               builder: (BuildContext context)
//               {
//                 return AlertDialog(
//                   title: const Text("SQFLITE CRUD"),
//                   content: const Text("Do you want to delete this record ?"),
//                   actions: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         FormHelper.submitButton("Yes", () {
//                           dbService.deleteProducts(data).then(
//                                 (value) {
//                               setState(() {
//                                 Navigator.of(context).pop();
//                               });
//                             },
//                           );
//                         },
//                             width: 100,
//                             borderRadius: 5,
//                             btnColor: Colors.blueAccent,
//                             borderColor: Colors.blueAccent
//                         ),
//                         const SizedBox(
//                           width: 5,
//                         ),
//                         FormHelper.submitButton("No", () {
//                           Navigator.of(context).pop();
//                         },
//                             width: 100,
//                             borderRadius: 5,
//                             btnColor: Colors.blueAccent,
//                             borderColor: Colors.blueAccent
//                         ),
//                       ],
//                     )
//                   ],
//                 );
//               });
//       },
//       headingRowColor: Colors.orangeAccent,
//       isScrollable: true,
//       columnTextFontSize: 15,
//       columnTextBold: false,
//       columnSpacing: 50,
//       onSort: (columnIndex, columnName,asc){},
//     );
//   }
// }
