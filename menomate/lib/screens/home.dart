import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:menomate/helpers/datas.dart';
import 'package:menomate/widgets/carousel.dart';
import 'package:menomate/widgets/tipgrid.dart';
import 'package:menomate/widgets/videogrid.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 240, 181, 221),
                Color(0xFFF5F5F5),
              ],
              stops: [0.0, 0.9],
            ),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18.0),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 222, 220, 220)
                          .withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 50.0, left: 20),
                  child: Carousel(),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                margin: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18.0),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 222, 220, 220)
                          .withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.pink.shade400),
                              borderRadius: BorderRadius.circular(12.0)),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Icon(
                                  FontAwesomeIcons.calendar,
                                  color: Colors.pink,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 4, left: 8, right: 4, bottom: 4),
                                child: Text("Fri, 15 Aug"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Center(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            "assets/home/semicirpink.png",
                            width: 200,
                          ),
                          const Column(
                            children: [
                              Text(
                                "Period in",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "21 days",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 36.0,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  reverse: false,
                  enlargeCenterPage: false,
                  autoPlay: false,
                  viewportFraction: 0.3,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    setState(() {
                       _currentIndex = index;
                    });
                  },
                ),
                items: HealthTipsProvider.words.map((word) {
                  return Builder(
                    builder: (BuildContext context) {
                      return GestureDetector(
                        onTap: () {
                          print("Clicked on: $word");
                        },
                        child: Center(
                          child: Text(
                            word,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              if (_currentIndex == 0) const tipgrid(),
              if (_currentIndex == 1) const VideoGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
