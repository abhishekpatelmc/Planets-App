import 'dart:math';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Planets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      backgroundColor: Colors.black12,
      appBar: AppBar(
        // appbar color : #b32941
        backgroundColor: Color(0xFFb32941),
        centerTitle: true,
        title: Text(
          'Planets',
          style: GoogleFonts.poppins(
            fontSize: 22,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 15, bottom: 10, left: 10, right: 10),
        children: <Widget>[
          Cardbox(
            planet: 'Mercury',
            subtitle: 'Swift Planet',
            image: 'images/mercury.png',
            distance: '00.61 AU',
            weight: '0.3 Kg',
          ),
          Cardbox(
            planet: 'Venus',
            subtitle: 'morning/evening star',
            image: 'images/venus.png',
            distance: '00.28 AU',
            weight: '0.9 Kg',
          ),
          Cardbox(
            planet: 'Earth',
            subtitle: 'mother-earth',
            image: 'images/earth.png',
            distance: '00.00 AU',
            weight: '1.0 Kg',
          ),
          Cardbox(
            planet: 'Moon',
            subtitle: 'Natural Satilite of Earth',
            image: 'images/moon.png',
            distance: '0.002 Au',
            weight: '0.1 Kg',
          ),
          Cardbox(
            planet: 'Mars',
            subtitle: 'Red Planet',
            image: 'images/mars.png',
            distance: '00.52 AU',
            weight: '0.3 Kg',
          ),
          Cardbox(
            planet: 'Jupiter',
            subtitle: 'largest planet',
            image: 'images/jupiter.png',
            distance: '04.20 AU',
            weight: '2.5 Kg',
          ),
          Cardbox(
            planet: 'Saturn',
            subtitle: 'Ringed Planet',
            image: 'images/saturn.png',
            distance: '08.52 AU',
            weight: '1.0 Kg',
          ),
          Cardbox(
            planet: 'Uranus',
            subtitle: 'bulls-eye planet',
            image: 'images/uranus.png',
            distance: '18.21 AU',
            weight: '0.8 Kg',
          ),
          Cardbox(
            planet: 'Neptune',
            subtitle: 'Last of the Gas Giants',
            image: 'images/neptune.png',
            distance: '29.09 AU',
            weight: '1.1 Kg',
          ),
          Cardbox(
            planet: 'Pluto',
            subtitle: 'Hades',
            image: 'images/pluto.png',
            distance: '--.-- AU',
            weight: '0.0 Kg',
          ),
        ],
      ),
    );
  }
}

class Cardbox extends StatelessWidget {
  final String planet;
  final String subtitle;
  final String image;
  final String distance;
  final String weight;
  Cardbox({this.image, this.planet, this.subtitle, this.distance, this.weight});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.only(top: 8, left: 15, right: 5, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFFeaad2b),
      ),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 90,
            height: 90,
            child: Image.asset(
              image,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                planet,
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: Container(
                  height: 2.0,
                  width: 50.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                subtitle,
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                children: <Widget>[
                  Transform.rotate(
                    angle: 45 * pi / 180,
                    child: Icon(Icons.flight),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    distance,
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.black45,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Transform.rotate(
                    angle: 90 * pi / 180,
                    child: Icon(Icons.fitness_center),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    weight,
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.black45,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 25, bottom: 15, left: 10, right: 10),
              child: Image(
                fit: BoxFit.fitWidth,
                image: AssetImage('images/drawer.png'),
              ),
            ),
            Text(
              'About',
              style: GoogleFonts.poppins(
                  fontSize: 25,
                  color: Color(0xFFeaad2b),
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
              child: Text(
                'This app is created in flutter. This distance between the Earth and other planets are mentioned in AU. The vary in wegiht according to each planet is given for 1Kg.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 3, bottom: 10, right: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Center(
                      child: Text(
                        ' Credits ',
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Color(0xFFeaad2b),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFeaad2b),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: ListTile(
                        onTap: _launchURL,
                        leading: CircleAvatar(
                          maxRadius: 21,
                          child: Image.asset('images/abhishek.png'),
                        ),
                        subtitle: Text(
                          'Flutter Devloper',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        title: Text(
                          'Abhishek Patel',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.more_vert),
                          onPressed: _launchURL,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://abhishekpatelmc.github.io/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
