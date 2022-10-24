import 'package:brand_house/features/presentation/config.dart';
import 'package:brand_house/features/presentation/widgets/products_description.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../home/widgets/app_bar.dart';


class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {

CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size.fromHeight(60), child: AppBarWidget()),
      body: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 12),
                child: CarouselSlider.builder(
                  itemCount: 5,
                  carouselController: buttonCarouselController,
                  itemBuilder:
                      (BuildContext context, int itemIndex,
                      int pageViewIndex) =>
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.only(right: 12),
                          width: 380,
                          height: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              image: const DecorationImage(
                                  image: NetworkImage('https://thumbs.dreamstime.com/z/trendy-beautiful-young-asian-woman-carrying-colorful-bags-shopping-online-mobile-phone-isolated-purple-banner-background-184325828.jpg'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                      ),
                  options: CarouselOptions(
                    height: 120,
                    viewportFraction: 0.94,
                  ),
                )
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 36, 16, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Лучшие предложения', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500, color: ColorConfig.black),),
                    Text('См. все', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: ColorConfig.violet),)
                  ],
                )
            ),
            SizedBox(
              height: 35,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int itemIndex) =>
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: ColorConfig.greyBg
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 8),
                        width: 164,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  child: Text('18:29:13', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: ColorConfig.yellow,
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  child: Text('- 29%  ', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),),
                                ),
                              ],
                            ),
                            Container(
                              height: 124,
                              child: Image.network('https://cdn.sanity.io/images/c1chvb1i/production/5e762aae11d46e18bd20b095691853579c4e613e-1100x735.jpg', fit: BoxFit.fill,),
                            ),
                            ProductsDescription(marginBottom: 0, iconSize: 0.1, boolFlag: false,)
                          ],
                        ),
                      ),
                    ),
              )
            )
          ],
        ),
      ),
    );
  }
}