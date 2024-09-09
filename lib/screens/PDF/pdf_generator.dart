import 'dart:typed_data';

import 'package:invoice_app/utils/global.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<Uint8List> pdfGenerator() async {
  final pdf = pw.Document();
  pdf.addPage(
    pw.Page(
      margin: pw.EdgeInsets.zero,
      pageFormat: const PdfPageFormat(300, 500),
      build: (context) => pw.Padding(
        padding: const pw.EdgeInsets.all(8),
        child: pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          children: [
            pw.Align(
              alignment: pw.Alignment.center,
              child: pw.Text(
                'D-Mat',
                style: pw.TextStyle(
                  fontSize: 25,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
            ),
            pw.Divider(),
            pw.Align(
              alignment: pw.Alignment.topLeft,
              child: pw.Text(
                'User Details',
                style: const pw.TextStyle(
                  fontSize: 15
                ),
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Row(
              children: [
                pw.Text(
                  'Name : ',
                ),
                pw.Text(
                  '${txtFirst.text} ${txtLast.text}',
                ),
              ],
            ),
            pw.SizedBox(height: 10),
            pw.Row(
              children: [
                pw.Text(
                  'Phone no. : ',
                ),
                pw.Text(
                  txtPhone.text,
                ),
              ],
            ),
            pw.SizedBox(height: 10),
            pw.Row(
              children: [
                pw.Text(
                  'Email Address : ',
                ),
                pw.Text(
                  txtEmailAddress.text,
                ),
              ],
            ),
            pw.SizedBox(height: 10),
            pw.Row(
              children: [
                pw.Text(
                  'Address : ',
                ),
                pw.Text(
                  txtAddress.text,
                ),
              ],
            ),
            pw.Divider(),
            pw.Row(
              children: [
                pw.Text(
                  'Product Name',
                  style: const pw.TextStyle(
                    fontSize: 15,
                  ),
                ),
                pw.Spacer(),
                pw.Text(
                  'Product Price',
                  style: const pw.TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            pw.SizedBox(height: 10),
            ...List.generate(
              shoppingList.length,
              (index) => rowProduct(index: index),
            ),
            pw.Divider(),
            pw.Row(
              children: [
                pw.Text('Total Price '),
                pw.Spacer(),
                pw.Text('18 % GST : \$${pey()}/-'),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  return pdf.save();
}

pw.Widget rowProduct({required index}) {
  return pw.Row(
    children: [
      pw.Text('${index + 1})  ${shoppingList[index].name}'),
      pw.Spacer(),
      pw.Text('\$${shoppingList[index].price}/-'),
    ],
  );
}
