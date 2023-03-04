import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:flutter_finex_mobileapp/data/themes.dart';
import 'package:flutter_finex_mobileapp/pages/Authentification.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _controller = PageController(
    initialPage: 0,
    viewportFraction: 1,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lPrimaryColorBg,
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          mainAxisSize: MainAxisSize
              .max, //la longueur de la hauteur : Max pour prendre toute l'espace
          mainAxisAlignment: MainAxisAlignment
              .start, // le positionnemement des elements sur la hauteur
          children: [
            Row(
              // Poprietes row
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo_light.png",
                  width: 200,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Stack(
                    children: [
                      PageView(
                        controller: _controller,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                              child: Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/gif_1.gif",
                                      width: 350, height: 300),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("SOUSCRIPTION",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Souscrivez à un contrat",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall),
                                ],
                              )
                            ],
                          )
                          ),
                          Container(
                              child: Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/gif_2.gif",
                                      width: 350, height: 300),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("PAYER",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Payer vos primes",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall),
                                ],
                              )
                            ],
                          )
                          ),Container(
                              child: Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/gif_3.gif",
                                      width: 350, height: 300),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("CONTRATS",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Consulter vos contrats",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall),
                                ],
                              )
                            ],
                          )
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Padding(
                          padding: EdgeInsets.only(top: 150),
                          child: smooth_page_indicator.SmoothPageIndicator(
                            controller: _controller,
                            count: 3,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) {
                              _controller.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: smooth_page_indicator.ExpandingDotsEffect(
                              expansionFactor: 2,
                              spacing: 8,
                              radius: 16,
                              dotWidth: 16,
                              dotHeight: 4,
                              dotColor: Colors.black,
                              activeDotColor: Colors.pink,
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 50, vertical: 20)),
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.black),
                    ),
                    child: const Text('PASSER', style: TextStyle(fontSize: 16)),
                    onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Authentification()));
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
