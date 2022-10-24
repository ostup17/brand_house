import 'package:brand_house/features/presentation/home/widgets/basket_app_bar.dart';
import 'package:brand_house/features/presentation/widgets/button.dart';
import 'package:flutter/material.dart';

import '../config.dart';

class Basket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(preferredSize: Size.fromHeight(60), child: AppBarWidgetBasket()),
        body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
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
                              'https://img.abercrombie.com/is/image/anf/KIC_155-1144-0753-279_prod1?policy=product-medium',
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
                                        child:  Text('Элемент одежды', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11, color: ColorConfig.textPrompt)),
                                      ),
                                    ),
                                    Text('Какие-то джинсы Balenciaga', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13, color: ColorConfig.textBlack),),
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(0, 8, 0, 12),
                                        child: Text( '1500 ', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: ColorConfig.textBlack))
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          border: Border.all(color: ColorConfig.borderBasket),
                                          color: ColorConfig.bgInput
                                      ),
                                      height: 32,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.remove,
                                              size: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text('1', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: ColorConfig.textBlack),),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.add,
                                              size: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
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
                                  padding: const EdgeInsets.only(right: 12.0, left: 12.0),
                                  constraints: const BoxConstraints(),
                                  icon: const Icon(Icons.delete_forever_rounded),
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
            Container(
              margin: EdgeInsets.fromLTRB(16, 26, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('В корзине', style: TextStyle(fontSize: 19, color: ColorConfig.textBlack, fontWeight: FontWeight.w500),),
                      Text('3 товара', style: TextStyle(fontSize: 16, color: ColorConfig.textPrompt, fontWeight: FontWeight.w400),),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Text('Ввести промокод', style: TextStyle(fontSize: 14, color: ColorConfig.violet, fontWeight: FontWeight.w600),),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text('Использовать бонусы', style: TextStyle(fontSize: 14, color: ColorConfig.violet, fontWeight: FontWeight.w600),),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Итого', style: TextStyle(fontSize: 19, color: ColorConfig.textBlack, fontWeight: FontWeight.w500),),
                        RichText(
                          text: TextSpan(
                              text: '1401 ', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: ColorConfig.textBlack),
                              children: [
                                TextSpan(
                                  text: 'c', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: ColorConfig.textBlack, decoration: TextDecoration.underline, decorationColor: ColorConfig.textBlack),
                                )
                              ]
                          ),
                        ),
                      ],
                    ),
                  ),
                  LoginButton(background: ColorConfig.violet, border: ColorConfig.violet, marginTop: 32, text: 'Перейти к оформлению', textColor: Colors.white, navigation: 'home'),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 28),
                    child: Text('Вы получите +133 бонуса', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: ColorConfig.textPrompt),),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}