import 'package:abook_app1/constants/colors.dart';
import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

class BookDetail extends StatelessWidget {
  final book;
  const BookDetail(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            book.type.toUpperCase(),
            style: const TextStyle(
                color: Colors.deepOrange, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            book.name,
            style: const TextStyle(
              fontSize: 24,
              color: kFont,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text.rich(
                TextSpan(
                  text: 'Publication from Istudio ',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
