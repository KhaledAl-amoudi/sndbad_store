import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sndbad_store/core/view/widget/listView_category.dart';
import 'package:sndbad_store/core/view/widget/section_widget.dart';
import 'package:sndbad_store/core/view/widget/title.dart';
import 'package:sndbad_store/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                height: 280.h,
                width: double.infinity,
                child: GridView.count(
                  crossAxisCount: 3,
                  childAspectRatio: 1.09,
                  children: const [
                    SectionWidget(
                        iconPath: 'assets/image/cart-icon-section.svg',
                        title: 'المتجر'),
                    SectionWidget(
                        iconPath: 'assets/image/sale-icon.svg',
                        title: 'العروض'),
                    SectionWidget(
                        iconPath: 'assets/image/speasial-order.svg',
                        title: 'طلب خاص'),
                    SectionWidget(
                        iconPath: 'assets/image/big-car.svg',
                        title: 'قسم الجملة'),
                    SectionWidget(
                        iconPath: 'assets/image/e-commerce.svg',
                        title: 'المتاجر اﻷلكترونية'),
                    SectionWidget(
                        iconPath: 'assets/image/store.svg',
                        title: 'المحلات'),
                  ],
                ),
              ),
              
            ),
            SizedBox(height: 10.h,),
            typeProduct(title: ':الفئــــات'),
            Container(
              height: 141.56.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListviewCategoryItem(isActive: true,),
                  ListviewCategoryItem(isActive: false,),
                  ListviewCategoryItem(isActive: false,),
                ],
              ),
            )
          ],
          
        ),
      ),
    );
  }
}
