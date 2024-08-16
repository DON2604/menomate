import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:menomate/widgets/carousel.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 240, 181, 221), // Light Blue
            Color(0xFFF5F5F5), // Light Grey
          ],
          stops: [0.0, 0.9],
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: Colors.white, // White box
              borderRadius: BorderRadius.circular(18.0), // Rounded edges
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 222, 220, 220).withOpacity(0.1),
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
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white, // White box
              borderRadius: BorderRadius.circular(18.0), // Rounded edges
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 222, 220, 220).withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  const Row(
                    children: [
                     
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: Icon(FontAwesomeIcons.calendar),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 11, left: 6),
                        child: Text("Fri, 15 Aug"),
                      )
                    ],
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 115),
                  child: Image.asset("assets/home/semicirpink.png", width: 200),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
