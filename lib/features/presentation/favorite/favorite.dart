import 'package:brand_house/features/presentation/main/main.dart';
import 'package:flutter/material.dart';

import '../config.dart';
import '../home/widgets/basket_app_bar.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size.fromHeight(60), child: CatalogPlusAppBar(header: 'Избранное',)),
      body: Container(
        margin: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 8,
                separatorBuilder: (BuildContext context, int index) => const Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(28), // Image border
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(48), // Image radius
                              child: Image.network(
                                'https://i.ebayimg.com/thumbs/images/g/FTAAAOSw6bti-oYA/s-l225.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Flexible(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Flexible(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child:  Text('195426 • Серия товара', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11, color: ColorConfig.textPrompt)),
                                        ),
                                      ),
                                      Text('Описание товара в две строки длинные строки', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13, color: ColorConfig.textBlack),),
                                      Container(
                                          margin: const EdgeInsets.fromLTRB(0, 8, 0, 12),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  RichText(
                                                    text: TextSpan(
                                                        text: '2400 ', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: ColorConfig.textBlack),
                                                        children: [
                                                          TextSpan(
                                                            text: 'c', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: ColorConfig.textBlack, decoration: TextDecoration.underline, decorationColor: ColorConfig.textBlack),
                                                          )
                                                        ]
                                                    ),
                                                  ),
                                                  const SizedBox(width: 8,),
                                                  Text('2560 c', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: ColorConfig.textPrompt, decoration: TextDecoration.lineThrough, decorationColor: ColorConfig.textBlack, decorationStyle: TextDecorationStyle.solid))
                                                ],
                                              ),
                                              Container(
                                                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                                decoration: BoxDecoration(
                                                  color: ColorConfig.pink.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(16)
                                                ),
                                                child: Text('-29%', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: ColorConfig.red),),
                                              )
                                            ],
                                          )

                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(32),
                                              color: ColorConfig.violet
                                          ),
                                          child: const Text('В корзину', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),),
                                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                        )
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Align(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.delete_forever_rounded, color: ColorConfig.iconInput, size: 33,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}