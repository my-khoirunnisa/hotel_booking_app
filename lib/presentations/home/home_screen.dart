import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking/presentations/detail/detail_screen.dart';
import 'package:flutter_hotel_booking/utils/custom_textstyle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final items = [
    [
      CupertinoIcons.building_2_fill,
      'Resort',
      true,
    ],
    [
      CupertinoIcons.home,
      'Homie',
      false,
    ],
    [
      CupertinoIcons.building_2_fill,
      'Scraper',
      false,
    ],
    [
      CupertinoIcons.building_2_fill,
      'Mansion',
      false,
    ],
  ];

  final imgList = [
    'https://images.unsplash.com/photo-1592229505726-ca121723b8ef?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1631049307264-da0ec9d70304?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1618773928121-c32242e63f39?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ];

  void setItemType(int index) {
    setState(() {
      for (var i = 0; i < items.length; i++) {
        items[i][2] = false;
      }
      items[index][2] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://img.icons8.com/?size=100&id=vn5c9XxoOrI0&format=png&color=000000',
                  width: 45,
                  height: 45,
                ),
              ),
              IconButton.outlined(
                onPressed: () {},
                icon: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Icon(
                    CupertinoIcons.bell,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.grey.shade200),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey.shade300,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade100,
                  spreadRadius: 4,
                  blurRadius: 18,
                  offset: const Offset(0, 7),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Where to go?',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Pick your hotel destination here!',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.outline,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Theme.of(context).colorScheme.primary,
                          Theme.of(context).colorScheme.secondary,
                          Theme.of(context).colorScheme.tertiary,
                        ], transform: const GradientRotation(pi / 4)),
                        shape: BoxShape.circle),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.location_fill,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Best Deals!',
                style: h1Style,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey.shade200,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(7),
                  child: Text(
                    '50% Off!',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return const DetailScreen();
              }));
            },
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    width: double.infinity,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Blizz Carla Hotel',
                              style: h2Style,
                            ),
                            const SizedBox(height: 7),
                            Row(
                              children: [
                                Text(
                                  'Rp 399.000',
                                  style: bodyBoldStyle,
                                ),
                                Text(
                                  '/night',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.outline,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 7),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.sparkles,
                                  color: Theme.of(context).colorScheme.primary,
                                  size: 20,
                                ),
                                const SizedBox(width: 7),
                                const Text(
                                  'Deluxe room',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          Theme.of(context).colorScheme.outline,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Malang, Indonesia',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color:
                                        Theme.of(context).colorScheme.outline,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 8.0,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  setItemType(index);
                },
                child: Container(
                  decoration: items[index][2] == true
                      ? BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20),
                        )
                      : BoxDecoration(
                          border:
                              Border.all(width: 1, color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(20),
                        ), // color of grid items
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(items[index][0] as IconData?,
                          color: items[index][2] == true
                              ? Colors.white
                              : Colors.black),
                      const SizedBox(height: 10),
                      Text(
                        items[index][1].toString(),
                        style: TextStyle(
                          fontSize: 14.0,
                          color: items[index][2] == true
                              ? Colors.white
                              : Theme.of(context).colorScheme.outline,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          Text(
            'Recommendation',
            style: h1Style,
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 200.0,
            child: ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: imgList.length,
              itemBuilder: (_, index) => Card(
                elevation: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    imgList[index],
                    fit: BoxFit.cover,
                    width: 250,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
