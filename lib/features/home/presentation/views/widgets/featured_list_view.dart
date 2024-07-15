import 'package:bookly/core/utlis/assets.dart';
import 'package:flutter/material.dart';
class Featured_List_View extends StatelessWidget {
  const Featured_List_View({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(15)

            ),
            child: AspectRatio(aspectRatio:0.6,child: Image.asset(AssetsData.testImage)),
          ),
        );
      },itemCount: 5,scrollDirection: Axis.horizontal,),
    );
  }
}
