import 'package:dukaan_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'views.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dukaan App'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) {
                  return SearchView();
                }),
              );
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) {
                  return CartView();
                }),
              );
            },
            icon: Icon(Icons.shopping_basket),
          ),
        ],
      ),
      body: Consumer(
        builder: (context, value, _) => ListView(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          children: [
            HomeCarousel(
              images: [
                'https://www.taylorandscott.com.au/wp-content/uploads/2016/06/iStock_000081037361_Large-1024x680.jpg',
                'https://s3.eu-west-1.amazonaws.com/prod.news.product.which.co.uk/news/wp-content/uploads/2021/06/MAIN-13.jpg',
                'https://i1.wp.com/dl.img-news.com/dl/img/s0/dl/2020/09/1471701-559173709.jpeg?fit=%2C&ssl=1',
                'https://s3.eu-west-1.amazonaws.com/prod.news.product.which.co.uk/news/wp-content/uploads/2021/06/MAIN-13.jpg',
              ],
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Product Categories',
                          style: GoogleFonts.poppins(),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View All',
                            style: GoogleFonts.poppins(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 96,
                    width: double.infinity,
                    //child: ,
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Latest Products',
                          style: GoogleFonts.poppins(),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View All',
                            style: GoogleFonts.poppins(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 210,
                    width: double.infinity,
                    //child: ,
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Electronics',
                          style: GoogleFonts.poppins(),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View All',
                            style: GoogleFonts.poppins(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
