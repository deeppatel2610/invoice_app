import 'package:flutter/material.dart';
import 'package:invoice_app/utils/global.dart';

import '../../main components/app_bar_mathod.dart';
import '../../utils/colors.dart';
import '../../utils/list_of_pro.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> category = ['Nike', 'Adidas', 'NB', 'Puma', 'Asics'];
  List<String> selected = [];

  get index => null;

  @override
  Widget build(BuildContext context) {
    final filterPro = pro.where((protected) {
      return selected.isEmpty || selected.contains(protected.category);
    }).toList();
    return Scaffold(
      backgroundColor: bgColor,
      appBar: appBarMethod(
          text: 'D-Mat', isIcon: false, isSearch: true, context: context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: category
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: FilterChip(
                            label: Text(e),
                            selected: selected.contains(e),
                            onSelected: (value) {
                              setState(() {
                                if (value) {
                                  selected.add(e);
                                } else {
                                  selected.remove(e);
                                }
                              });
                            },
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filterPro.length,
                itemBuilder: (context, index) {
                  final product = filterPro[index];
                  return Card(
                    elevation: 8.0,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(color: bgColor),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(10),
                        leading: Image(
                          fit: BoxFit.contain,
                          image: AssetImage(product.img),
                        ),
                        title: Text(product.name),
                        subtitle: Text('\$ ${product.price}/-'),
                        trailing: IconButton(
                          onPressed: () {
                            shoppingList.add(product);
                            shoppingUserList.add(product);
                          },
                          icon: const Icon(
                            Icons.shopping_cart_outlined,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
