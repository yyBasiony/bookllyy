import 'package:flutter/material.dart';
import '../../../../../core/utlis/assets.dart';
import '../../../../../core/utlis/styles.dart';
import 'featured_list_view.dart';
import 'book_list_item.dart';

class Home_Body extends StatelessWidget {
  const Home_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 11),
            child: Row(
              children: [
                Image.asset(
                  AssetsData.logo,
                  height: 18,
                ),
                Spacer(),
                Icon(Icons.search, size: 30),
              ],
            ),
          ),
          Featured_List_View(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 15),
            child: Text("Best Seller", style: Styles.textStyle18),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              children: [
                BookListItem(
                  title: "Harry Potter and the Goblet of Fire",
                  author: "J.K. Rowling",
                  price: "19.99 €",
                  rating: 4.8,
                  ratingCount: 2390,
                ),
                BookListItem(
                  title: "The Jungle Book",
                  author: "Rudyard Kipling",
                  price: "19.99 €",
                  rating: 4.8,
                  ratingCount: 2390,
                ),
                BookListItem(
                  title: "Star Wars: Return of the Jedi",
                  author: "James Kahn",
                  price: "19.99 €",
                  rating: 4.8,
                  ratingCount: 2390,
                ),
                BookListItem(
                  title: "Harry Potter and the Goblet of Fire",
                  author: "J.K. Rowling",
                  price: "19.99 €",
                  rating: 4.8,
                  ratingCount: 2390,
                ),
                BookListItem(
                  title: "Harry Potter and the Goblet of Fire",
                  author: "J.K. Rowling",
                  price: "19.99 €",
                  rating: 4.8,
                  ratingCount: 2390,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
