import 'package:flutter/material.dart';
import 'package:invoice_app/main%20components/app_bar_mathod.dart';
import 'package:invoice_app/utils/global.dart';

import '../../main components/input_box_method.dart';
import '../../utils/colors.dart';

class CustomerDetail extends StatefulWidget {
  const CustomerDetail({super.key});

  @override
  State<CustomerDetail> createState() => _CustomerDetailState();
}

class _CustomerDetailState extends State<CustomerDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMethod(text: 'Customer',isIcon: false,isSearch: false,context:context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Customer Detail',
              style: TextStyle(
                color: textColorForInput,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            ),
            temp(),
            Row(
              children: [
                Icon(
                  Icons.person_outlined,
                  color: primary,
                  size: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: inputBoxMethod(
                    Text: 'First',
                    isNumber: false,
                    isAddress: false,
                    controller: txtFirst,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: inputBoxMethod(
                    Text: 'Last',
                    isNumber: false,
                    isAddress: false,
                    controller: txtLast,
                  ),
                ),
              ],
            ),
            temp(),
            Row(
              children: [
                Icon(
                  Icons.phone_outlined,
                  color: primary,
                  size: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: inputBoxMethod(
                    Text: 'Mobil no',
                    isNumber: true,
                    isAddress: false,
                    controller: txtPhone,
                  ),
                ),
              ],
            ),
            temp(),
            Row(
              children: [
                Icon(
                  Icons.email_outlined,
                  color: primary,
                  size: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: inputBoxMethod(
                      Text: 'Email Address',
                      isNumber: false,
                      isAddress: false,
                      controller: txtEmailAddress),
                ),
              ],
            ),
            temp(),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: primary,
                  size: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: inputBoxMethod(
                      Text: 'Address',
                      isNumber: false,
                      isAddress: true,
                      controller: txtAddress,),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacementNamed('/home');
        },
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(
            Icons.arrow_forward_ios_outlined,
            color: bgColor,
          ),
        ),
      ),
    );
  }

  SizedBox temp() {
    return const SizedBox(
      height: 10,
    );
  }
}
