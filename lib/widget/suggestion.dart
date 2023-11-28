import 'package:e_book/dummy/book_data.dart';
import 'package:e_book/view/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuggestionsBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dataBook.length,
        itemBuilder: (context, index) => Container(
          width: 150,
          height: 210,
          margin: const EdgeInsets.symmetric(horizontal: 3),
          child: InkWell(
            onTap: () {
              Get.to(
                () => DetailPage(
                  book: dataBook[index],
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    dataBook[index].image,
                    width: 110,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
                FittedBox(
                  child: Text(
                    dataBook[index].title,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                FittedBox(
                  child: Text(
                    dataBook[index].genre,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 15,
                      color: Colors.cyan,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
