import 'package:flutter/material.dart';
import '../../../../../core/utlis/assets.dart';
import '../../../../../core/utlis/styles.dart';

class BookListItem extends StatelessWidget {
  final String title;
  final String author;
  final String price;
  final double rating;
  final int ratingCount;

  const BookListItem({
    Key? key,
    required this.title,
    required this.author,
    required this.price,
    required this.rating,
    required this.ratingCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Image.asset(
            AssetsData.testImage, // Placeholder image
            height: 85,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Styles.textStyle18),
                Text(author, style: Styles.textStyle14),
                Row(
                  children: [
                    Text(price, style: Styles.pricestyle),
                    SizedBox(width: 24),
                    Icon(Icons.star, color: Colors.yellow, size: 16),
                    SizedBox(width: 2),
                    Text(rating.toString(), style: Styles.ratingCount),
                    SizedBox(width: 2),
                    Text("(${ratingCount.toString()})", style: Styles.ratingCount),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
