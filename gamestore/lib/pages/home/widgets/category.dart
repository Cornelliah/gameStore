import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:gamestore/pages/home/widgets/newest.dart';
import 'package:gamestore/pages/home/widgets/popular.dart';

class CategorySection extends StatelessWidget {
   CategorySection({super.key});

final categories = [
    {
      'icon': Icons.track_changes_outlined,
      'color': const Color(0xFFCC0033),
      'title': 'Arcade'
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color':  const Color(0xFF7182f2),
      'title': 'Racing'
    },
    {
      'icon': Icons.casino_outlined,
      'color': const Color(0xFFFC0033),
      'title': 'Strategy'
    },
    {
      'icon': Icons.sports_esports,
      'color': const Color(0xFFFC77A6),
      'title': 'More'
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 690,
      decoration: const BoxDecoration(
              color: Color(0xFFF6F8FF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
              )
      ),

     //categories boxes     
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 140,
            
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
              itemBuilder: ( (context, index) =>  Column(children: [
                  const SizedBox(height: 25),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: categories[index]['color'] as Color),
                    child: Icon(
                      categories[index]['icon'] as IconData,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    categories[index]['title'] as String,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )
                ],)) ,
              separatorBuilder:( (context, index) => const SizedBox(width: 33)) ,
              itemCount:categories.length ,
            ),  
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: 410,
            child: const Text(
              'Popular game',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
         PopularGame(),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: 410,
            child: const Text(
              'Newest game',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          NewestGame(),
        ],
      ),
    );
  }
}