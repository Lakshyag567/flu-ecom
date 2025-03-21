import 'package:flu_ecom/features/shop/screens/checkout/checkout.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:flu_ecom/utils/constants/sizes.dart';
import 'package:flu_ecom/utils/constants/text_strings.dart';
import 'package:flu_ecom/common/widgets/texts/section_heading.dart';
import 'package:flu_ecom/features/shop/screens/product_reviews/product_review.dart';
import 'package:flu_ecom/features/shop/screens/product-details/widgets/product_meta_data.dart';
import 'package:flu_ecom/features/shop/screens/product-details/widgets/rating_share.dart';
import 'package:flu_ecom/features/shop/screens/product-details/widgets/bottom_add_to_cart.dart';
import 'package:flu_ecom/features/shop/screens/product-details/widgets/product_attributes.dart';
import 'package:flu_ecom/features/shop/screens/product-details/widgets/product_detail_image_slider.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            ProductDetailImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// - Rating & Share Button
                  RatingAndShare(),

                  /// - Price, Title, Stock & Brand
                  ProductMetaData(),

                  /// -- Attributes
                  ProductAttributes(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Get.to(CheckoutScreen()),
                      child: Text('Checkout'),
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),

                  /// - Description
                  SectionHeading(title: 'Description'),
                  SizedBox(height: TSizes.spaceBtwItems),
                  ReadMoreText(
                    TTexts.productDescription,
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// - Reviews
                  Divider(),
                  SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionHeading(title: 'Reviews(199)'),
                      IconButton(
                        icon: Icon(Iconsax.arrow_right_3, size: 18),
                        onPressed: () => Get.to(ProductReviewScreen()),
                      ),
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
