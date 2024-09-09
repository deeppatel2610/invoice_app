import 'package:flutter/material.dart';
import 'package:invoice_app/main%20components/app_bar_mathod.dart';
import 'package:invoice_app/utils/global.dart';

import '../../utils/colors.dart';
import '../../utils/list_of_pro.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMethod(
        context: context,
        text: 'Cart',
        isIcon: true,
        isSearch: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              shoppingUserList.length,
              (index) => Card(
                elevation: 8.0,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(color: bgColor),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    title: Text(shoppingUserList[index].name),
                    subtitle: Text('\$ ${shoppingUserList[index].price}/-'),
                    trailing: SizedBox(
                      width: 160,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: bgColor,
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black38,
                                      blurRadius: 1,
                                      spreadRadius: 1)
                                ]),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      shoppingList[index].qut--;
                                      if (shoppingList[index].qut == 0) {
                                        shoppingUserList
                                            .remove(shoppingUserList[index]);
                                      }
                                      shoppingList.remove(shoppingList[index]);
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.remove,
                                  ),
                                ),
                                Text(
                                  shoppingList[index].qut.toString(),
                                  style: const TextStyle(fontSize: 17),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      shoppingList[index].qut++;
                                      shoppingList.add(pro[index]);
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                shoppingUserList.remove(shoppingUserList[index]);
                                shoppingList.remove(shoppingList[index]);
                              });
                            },
                            icon: const Icon(
                              Icons.delete_outline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 31),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/pdf');
          },
          child: Container(
            alignment: Alignment.center,
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              '${pey()} Pey',
              style: TextStyle(color: textColor, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
