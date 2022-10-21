import 'package:brand_house/features/presentation/catalog/products.dart';
import 'package:brand_house/features/presentation/home/widgets/app_bar.dart';
import 'package:flutter/material.dart';

import '../catalog/catalog.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(preferredSize: Size.fromHeight(54), child: AppBarWidget()),
      body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Catalog(),
                Container(
                    margin: const EdgeInsets.fromLTRB(16, 18, 16, 0),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Возможно вам понравится', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),),
                    )
                ),
                // SizedBox(
                  // height: 900,
                Products()

                // )
              ],
            ),
          )
      )

    );
  }
}