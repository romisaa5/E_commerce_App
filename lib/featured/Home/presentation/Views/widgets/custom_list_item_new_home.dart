import 'package:e_commerce/Featured/Home/presentation/Views/widgets/custom_red_container_widget.dart';
import 'package:e_commerce/Featured/Home/presentation/Views/widgets/stars_rate.dart';
import 'package:e_commerce/Featured/Home/presentation/models/product.dart';
import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListItemNewHome extends StatelessWidget {
  const CustomListItemNewHome({super.key, required this.product});


 
  final Product product;

  @override
  Widget build(BuildContext context) {
    double priceAfterDiscount =
        product.price + (product.price * (product.discountValue! / 100));
    return SizedBox(
      height: 260.h,
      width: 148.w,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              spreadRadius: 1,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.asset(
                    product.imageUrl,
                    height: 184.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                CustomRedcontainerWidget(
                  value: 'New',
                  product: product)
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  StarsRate(),
                  Text(
                    product.category,
                    style: Styles.textStyle12.copyWith(color: Colors.grey),
                  ),
                  Text(
                    product.title,
                    style: Styles.textStyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '${product.price} \$',
                    style:
                        Styles.textStyle14.copyWith(color: KprimaryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
