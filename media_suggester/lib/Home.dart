import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:media_suggester/Detalhes.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          "HOME",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person, color: Colors.red, size: 30),
                    padding: EdgeInsetsDirectional.all(8.0),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.grey.shade900,
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Recomendações",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 45),
                ),
              ),
              PlaceholderBody(),
              SizedBox(
                height: 60,
              )
            ],
          ),
        ]),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        child: const Icon(Icons.search),
        backgroundColor: Colors.red.shade600,
        foregroundColor: Colors.white,
        shape: CircleBorder(),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 70,
        color: Colors.red,
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.white,
                size: 45,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.event_note_sharp,
                color: Colors.white,
                size: 45,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class PlaceholderBody extends StatelessWidget {
  const PlaceholderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            "Tópico 1",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            pageViewKey: PageStorageKey<String>('carousel_slider'),
          ),
          items: _ObterListaCards(context),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            "Tópico 2",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            pageViewKey: PageStorageKey<String>('carousel_slider'),
          ),
          items: _ObterListaCards(context),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            "Tópico 3",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            pageViewKey: PageStorageKey<String>('carousel_slider'),
          ),
          items: _ObterListaCards(context),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            "Tópico 4",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            pageViewKey: PageStorageKey<String>('carousel_slider'),
          ),
          items: _ObterListaCards(context),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            "Tópico 5",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            pageViewKey: PageStorageKey<String>('carousel_slider'),
          ),
          items: _ObterListaCards(context),
        ),
      ],
    );
  }
}

_ObterListaCards(BuildContext context) {
  final List<String> imgList = [
    'https://vgaa.ca/wp-content/uploads/2022/08/minimalist-movie.jpg',
    'https://vgaa.ca/wp-content/uploads/2022/08/minimalist-movie.jpg',
    'https://vgaa.ca/wp-content/uploads/2022/08/minimalist-movie.jpg',
    'https://vgaa.ca/wp-content/uploads/2022/08/minimalist-movie.jpg',
    'https://vgaa.ca/wp-content/uploads/2022/08/minimalist-movie.jpg',
    'https://vgaa.ca/wp-content/uploads/2022/08/minimalist-movie.jpg',
  ];

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Detalhes(0)));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 10.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Image(
                                    image: AssetImage(
                                        "assets/images/dezesseis.png"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    'Placeholder de Título',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();

  return imageSliders;
}
