import 'package:brand_house/features/presentation/catalog/products.dart';
import 'package:flutter/material.dart';
import '../home/widgets/app_bar.dart';
import 'catalog.dart';

class CatalogWrapper extends StatelessWidget {
  const CatalogWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(preferredSize: Size.fromHeight(60), child: AppBarWidget()),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const Catalog(),
                  Container(
                      margin: const EdgeInsets.fromLTRB(16, 18, 16, 0),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Возможно вам понравится', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),),
                      )
                  ),
                  const Products()
                ],
              ),
            )
        )

    );
  }
}