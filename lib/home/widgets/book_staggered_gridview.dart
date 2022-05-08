import 'package:abook_app1/home/widgets/book_item.dart';
import 'package:abook_app1/models/books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BookStraggerGridView extends StatelessWidget {
  final int selected;
  final PageController pageController;
  final Function callback;
  BookStraggerGridView(this.selected, this.pageController, this.callback,
      {Key? key})
      : super(key: key);

  final booklist = Book.generatedBooks();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: [
          StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            crossAxisCount: 4,
            mainAxisSpacing: 16,
            itemCount: booklist.length,
            itemBuilder: (_, index) => BookItem(booklist[index]),
            staggeredTileBuilder: (_) => const StaggeredTile.fit(2),
            crossAxisSpacing: 16,
          ),
          Container()
        ],
      ),
    );
  }
}
