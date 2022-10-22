import 'package:brand_house/features/presentation/config.dart';
import 'package:brand_house/features/presentation/widgets/products_description.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisExtent: 322,
          // Максимальная горизонтальная ширина одного дочернего виджета
          maxCrossAxisExtent: 180,
          // Горизонтальный интервал между отдельными суб-виджетами
          mainAxisSpacing: 8.0,
          // Вертикальный интервал между отдельными суб-виджетами
          crossAxisSpacing: 10.0
      ),
      shrinkWrap: true,
      itemCount: 12,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Container(
            margin: EdgeInsets.only(top: 28),
            child: InkWell(
              onTap: () {},
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(18.0),
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(90),
                        child: Image.network('https://cdn.media.amplience.net/i/office/4587600078_ls.jpg?\$newpicture\$&fmt=auto&qlt=default', fit: BoxFit.cover,),
                      )
                  ),
                  ProductsDescription(marginBottom: 5, iconSize: 22, boolFlag: true,)

                ],
              ),
            )
        );
      },
    );
  }
}