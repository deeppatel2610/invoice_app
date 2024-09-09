import 'package:flutter/material.dart';
import 'package:invoice_app/main%20components/app_bar_mathod.dart';
import 'package:searchable_listview/searchable_listview.dart';

import '../../utils/colors.dart';
import '../../utils/global.dart';
import '../../utils/list_of_pro.dart';

class Searchable extends StatefulWidget {
  const Searchable({super.key});

  @override
  State<Searchable> createState() => _SearchableState();
}

class _SearchableState extends State<Searchable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMethod(
          context: context, text: 'Search', isIcon: true, isSearch: false),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: SearchableList(
                inputDecoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(7)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(15)),
                ),
                initialList: pro,
                filter: (query) => pro
                    .where((e) => e.name.toLowerCase().contains(query))
                    .toList(),
                itemBuilder: (item) {
                  return Column(
                    children: [
                      ...List.generate(
                        pro.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Card(
                            elevation: 8.0,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Container(
                              decoration: BoxDecoration(color: bgColor),
                              child: ListTile(
                                contentPadding: EdgeInsets.all(10),
                                leading: Image(
                                  image: AssetImage(pro[index].img),
                                ),
                                title: Text(pro[index].name),
                                subtitle: Text('\$ ${pro[index].price}/-'),
                                trailing: IconButton(
                                  onPressed: () {
                                    shoppingUserList.add(pro[index]);
                                    shoppingList.add(pro[index]);
                                  },
                                  icon: const Icon(
                                    Icons.shopping_cart_outlined,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
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
