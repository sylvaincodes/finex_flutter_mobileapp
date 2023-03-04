import 'package:flutter/material.dart';

class Authentification extends StatefulWidget {
  const Authentification({super.key});

  @override
  State<Authentification> createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/login_bg.jpg',
              ).image,
            ),
            shape: BoxShape.rectangle,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo_no_bg.png",
                      height: 200, width: 200, fit: BoxFit.cover)
                ],
              ),
              Row(
                children: [
                DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: 
                Column(
                  children: const [
                    TabBar(
                        indicatorColor: Colors.white,
                        isScrollable: true,
                        labelColor: Colors.white,
                        labelStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        tabs: [
                          Tab(
                            text: 'Connexion',
                          ),
                          Tab(
                            text: "S'inscrire",
                          ),
                        ]),
                    Expanded(
                        child: 
                        TabBarView(
                          children: [
                             Center(child : Text("xsdsd")),
                             Center(child : Text("xsdsd")),
                             Center(child : Text("xsdsd")),
                          ],
                     
                    )
                    )
                  ],
                ),
              ),
              ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
