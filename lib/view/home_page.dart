import 'package:e_book/constant/app_size.dart';
import 'package:e_book/dummy/category.dart';
import 'package:e_book/widget/book_lists.dart';
import 'package:e_book/widget/suggestion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hi Aashish,",
          style: GoogleFonts.belanosima(fontSize: 23),
        ),
        actions: [
          Icon(CupertinoIcons.search),
          AppSize.horMid,
          Icon(CupertinoIcons.bell_fill),
          AppSize.horMid,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/book.jpg',
                  width: width * 0.8,
                  height: 100,
                  fit: BoxFit.fill,
                  color: Color(0xFFD42A2F).withOpacity(0.4),
                  colorBlendMode: BlendMode.overlay,
                ),
              ),
            ),
            Container(
              width: width * 1,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: category
                      .map(
                        (e) => Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 3,
                          ),
                          child: Text(
                            e,
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            BookList(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                "You may also like",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            SuggestionsBook(),
          ],
        ),
      ),
    );
  }
}
