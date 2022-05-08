import 'package:abook_app1/constants/colors.dart';
import 'package:abook_app1/details/widgets/book_cover.dart';
import 'package:abook_app1/details/widgets/book_detail.dart';
import 'package:abook_app1/details/widgets/book_review.dart';
import 'package:abook_app1/models/books.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Book book;
  const DetailPage(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BookDetail(book),
            BookCover(book),
            BookReview(book),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: (() => Navigator.of(context).pop()),
        icon: const Icon(Icons.arrow_back_ios_outlined),
        color: kFont,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_horiz_outlined,
            color: kFont,
          ),
        ),
      ],
    );
  }
}
