import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../navigation/navigation_bar_ui.dart';
import '../sign_up_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final PageController _pageController = PageController(initialPage: 0);

  int _activePage = 0;

  final List<Widget> _pages = [PageOne(), PageTwo(), PageThree()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            }),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 100,
            child: Container(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                    _pages.length,
                    (index) => Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                              onTap: (() {
                                _pageController.animateToPage(index,
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeIn);
                              }),
                              child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: _activePage == index
                                      ? Colors.white
                                      : Colors.black)),
                        )),
              ),
            ))
      ]),
    );
  }
}

// PageOne

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splash1.png"),
              fit: BoxFit.cover)),
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Row(
              children: <Widget>[
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(PageRouteBuilder(pageBuilder:
                          (BuildContext context, Animation<double> animation,
                              Animation<double> secondaryAnimation) {
                        return const NavigationBarUi();
                      }, transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation,
                          Widget child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      }));
                    },
                    child: const Text("Pular",
                        style: TextStyle(color: Colors.white)))
              ],
            )),
        Expanded(
            child: Container(
          alignment: Alignment.center,
          child: RichText(
              text: TextSpan(
                  text: "                  Seja bem vindo ao \n",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.robotoSerif().fontFamily,
                  ),
                  children: const <TextSpan>[
                TextSpan(
                  text: "  Carta",
                  style: TextStyle(color: Colors.white, fontSize: 47),
                ),
                TextSpan(
                  text: "Capital",
                  style: TextStyle(color: Colors.black, fontSize: 47),
                )
              ])),
        )),
        SizedBox(
          height: 150,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 28, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Seguir", style: TextStyle(color: Colors.white)),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
        )
      ]),
    ));
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/splash2.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: Row(
                    children: <Widget>[
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(PageRouteBuilder(
                                pageBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation) {
                              return const NavigationBarUi();
                            }, transitionsBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation,
                                    Widget child) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            }));
                          },
                          child: const Text("Pular",
                              style: TextStyle(color: Colors.white)))
                    ],
                  )),
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Column(children: [
                    const Text(
                      "Receba as edições em sua casa\n   e tenha acesso ilimitado ao\n               conteúdo do app.",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Image.asset("assets/images/mags/groupedMags.png"),
                    const SizedBox(
                      height: 25,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(PageRouteBuilder(
                                pageBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation) {
                              return const SignUpMagazine();
                            }, transitionsBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation,
                                    Widget child) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            }));
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(Colors.black),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1.0),
                                side: BorderSide(color: Colors.black, width: 2),
                              ))),
                          child: Text("ASSINE")),
                    )
                  ]),
                ),
              )),
              const SizedBox(
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 28, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    const Text("Voltar", style: TextStyle(color: Colors.white)),
                    const SizedBox(
                      width: 195,
                    ),
                    const Text("Seguir", style: TextStyle(color: Colors.white)),
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/splash3.png"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Row(
                  children: <Widget>[
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (BuildContext context,
                                  Animation<double> animation,
                                  Animation<double> secondaryAnimation) {
                            return const NavigationBarUi();
                          }, transitionsBuilder: (BuildContext context,
                                  Animation<double> animation,
                                  Animation<double> secondaryAnimation,
                                  Widget child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          }));
                        },
                        child: const Text("Pular",
                            style: TextStyle(color: Colors.white)))
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: const [
                Text(
                  """Conheça mais\nbenefícios\ndos assinantes\nCarta""",
                  style: TextStyle(fontSize: 43, color: Colors.white),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 45),
              child: Row(children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Icon(Icons.check),
                ),
                Text(
                  " Submeta artigos ou textos ao\n exclusivo Blog do Assinante",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 45),
              child: Row(children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Icon(Icons.check),
                ),
                Text(
                  " Acesse o acervo digital, desde a\n edição 01 de CartaCapital",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 45),
              child: Row(children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Icon(Icons.check),
                ),
                Text(
                  " Favorite reportagens e artigos para ler\n quando quiser",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 45),
              child: Row(children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 35),
                  child: Icon(Icons.check),
                ),
                Text(
                  " Acesse a área do assinante, um\n espaço exclusivo para consultar os\n dados de sua assinatura",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 110,bottom: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  const Text("Voltar", style: TextStyle(color: Colors.white)),
                  const SizedBox(
                    width: 195,
                  ),
                  const Text("Seguir", style: TextStyle(color: Colors.white)),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


