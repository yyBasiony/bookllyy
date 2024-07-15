import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utlis/assets.dart';
import '../../../../../core/utlis/styles.dart';

class Home_Body extends StatelessWidget {
  const Home_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BackgroundColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 11),
            child: Row(
              children: [
                Image.asset(
                  AssetsData.logo,
                  height: 18,
                ),
                SizedBox(width: 145,),
                Icon(Icons.search,size:30)
              ],
            ),
          ),
          Featured_List_View(),
        ],
      ),
    );
  }
}
