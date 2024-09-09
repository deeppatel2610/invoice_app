// img
import 'package:flutter/material.dart';

String logo =  'assets/image/logo.png';

// customer
TextEditingController txtFirst = TextEditingController();
TextEditingController txtLast = TextEditingController();
TextEditingController txtEmailAddress = TextEditingController();
TextEditingController txtAddress = TextEditingController();
TextEditingController txtPhone = TextEditingController();

// list
List shoppingUserList = [];
List shoppingList = [];

// UDF for pey
double pey()
{
  double ans = 0;
  for(int i=0;i<shoppingList.length;i++)
    {
      ans=ans+shoppingList[i].price;
    }
  return ans += (ans*18)/100;
}