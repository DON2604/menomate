import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:menomate/helpers/datas.dart';

class Carousel extends StatefulWidget {
  const Carousel({
    super.key,
  });

  @override
  State<Carousel> createState() {
    return _Carousel();
  }
}

class _Carousel extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              "Hello,",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w300),
            ),
            Image.asset("assets/home/hello.gif", width: 45),
          ],
        ),
        const Text(
          "Nidhi Sikder",
          style: TextStyle(fontSize: 38, fontWeight: FontWeight.w400),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 150.0, 
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
              enlargeCenterPage: true,
              enlargeFactor: 0.2,
              viewportFraction: 0.8,
            ),
            items: [1, 2, 3, 4].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  final healthTipsProvider = HealthTipsProvider();
                  String randomTitle = healthTipsProvider.getRandomTitle();
                  String randomPhrase = healthTipsProvider.getRandomPhrase();
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/home/caro$i.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.28),
                          BlendMode.darken,
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Text(
                            randomTitle,
                            style: const TextStyle(
                              fontSize: 16.0,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            randomPhrase,
                            style: const TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
