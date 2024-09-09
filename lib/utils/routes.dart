import 'package:flutter/cupertino.dart';
import 'package:invoice_app/screens/Cart/cart_page.dart';
import 'package:invoice_app/screens/Search/Searchable.dart';
import 'package:invoice_app/screens/home/home_page.dart';
import 'package:invoice_app/screens/splash/splash_page.dart';

import '../screens/PDF/pdf_view.dart';
import '../screens/customer/customer_detail.dart';

Map<String, Widget Function(BuildContext)> route = {
  '/': (context) => const SplashPage(),
  '/customer': (context) => const CustomerDetail(),
  '/home': (context) => const HomePage(),
  '/search': (context) => const Searchable(),
  '/cart': (context) => const CartPage(),
  '/pdf': (context) => const PdfView(),
};
