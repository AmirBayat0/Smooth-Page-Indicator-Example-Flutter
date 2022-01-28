// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:smooth_page_indicator_example/models/models.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();

  int currentIndex = 0;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {

    
/*
Instagram: @CodeWithFlexz
Github: AmirBayat0
Youtube: Programming with Flexz
*/
    return SafeArea(
      child: Scaffold(
        floatingActionButton: isSelected
            ? FloatingActionButton(
                backgroundColor: Colors.deepPurple,
                onPressed: () {},
                child: Icon(Icons.arrow_forward),
              )
            : null,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "@CodeWithFlexz",
              style: TextStyle(
                  color: Color(0xfffdfdfd),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1),
            ),
            centerTitle: true,
            elevation: 0),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(models[currentIndex].imgAssetAddress),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.darken),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.zero,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 500,
                    child: PageView.builder(
                        onPageChanged: (index) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        controller: _controller,
                        itemCount: models.length,
                        itemBuilder: (BuildContext context, int index) {
                          currentIndex = index;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                if (isSelected == false) {
                                  isSelected = true;
                                } else {
                                  isSelected = false;
                                }
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 20, left: 30, right: 30, bottom: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.white,
                                    border: isSelected
                                        ? Border.all(
                                            width: 4, color: Colors.deepPurple)
                                        : null),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                models[index].imgAssetAddress),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      margin: EdgeInsets.all(10),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              2.4,
                                    ),
                                    Text(
                                      models[index].city,
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        models[index].description,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: models.length,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
