import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Screens/Product_details/dano_product_details.dart';
import 'package:grocery_plus_app_ui/Widgets/stock_item_container.dart';

class ProductsAspectSection extends StatefulWidget {
  const ProductsAspectSection({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductsAspectSection> createState() => _ProductsAspectSectionState();
}

class _ProductsAspectSectionState extends State<ProductsAspectSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: const StockItems(
                image: 'images/Avocado.png',
                text: 'Fruits & Vegetables',
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const StockItems(
                image: 'images/Breakfast.png',
                text: 'Breakfast',
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: const StockItems(
                image: 'images/Beverages.png',
                text: 'Beverages',
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const StockItems(
                image: 'images/Meat&fish.png',
                text: 'Meat & Fish',
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: const StockItems(
                image: 'images/Snacks.png',
                text: 'Snacks',
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const StockItems(
                image: 'images/Diary.png',
                text: 'Diary',
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DanoProduct()));
                });
              },
              child: const StockItems(
                image: 'images/Beverage1.png',
                text: 'Beverages',
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const StockItems(
                image: 'images/Fish.png',
                text: 'Meat & Fish',
              ),
            ),
          ],
        ),
      ],
    );
  }
}


// const ProductsAspectRow(



//                     const SizedBox(height: 20),
//                     const ProductsAspectRow(
//                       image: 'images/Drinks.png',
//                       text: 'Beverages',
//                       // image1: 'images/Fish.png',
//                       // text1: 'Meat & Fish',
//                     ),