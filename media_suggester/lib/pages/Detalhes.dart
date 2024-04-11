import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:media_suggester/pages/escrever_review.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.youtube.com');

class Detalhes extends StatefulWidget {
  Detalhes(this.id, {super.key});

  int id;

  //buscar na api os detalhes da mídia

  @override
  State<Detalhes> createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white, size: 30),
          backgroundColor: Theme.of(context).colorScheme.primary,
          centerTitle: true,
          title: const Text(
            "TÍTULO PLACEHOLDER",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.person,
                          color: Theme.of(context).colorScheme.secondary),
                      padding: const EdgeInsetsDirectional.all(8.0),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                const Image(
                  image: AssetImage("assets/images/placeholder.jpg"),
                ),
                SizedBox(
                  height: 260,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Theme.of(context).colorScheme.secondary,
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(15)),
                            child: Icon(
                              Icons.favorite,
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              size: 25,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EscreverReview()));
                            },
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(15),
                                backgroundColor:
                                    Theme.of(context).colorScheme.secondary),
                            child: Icon(
                              Icons.note_alt,
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              size: 25,
                            ),
                          ),
                        ]),
                  ),
                )
              ]),
              const SizedBox(
                height: 10,
              ),
               Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Text(
                      "Titulo",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Duração|Lançamento|ESRB",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "gen1|gen2|gen3|gen4",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Criticos',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 16),
                              Text(
                                '|',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 16),
                              Text(
                                'Usuarios',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '*****',
                                style: TextStyle(fontSize: 25),
                              ),
                              SizedBox(width: 50),
                              Text(
                                '*****',
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut ",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: const Color.fromARGB(255, 42, 42, 42),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: _launchUrl,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Trailer   ",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                ),
                              ),
                              const WidgetSpan(
                                child: Icon(
                                  Icons.play_arrow_rounded,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "Aonde Assistir:",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.transparent),
                            ),
                            child: Image.asset("assets/images/netflix_logo.png",
                                width: 60, height: 60),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Ver Mais",style: TextStyle(fontSize: 20),),
                  ),
                ],
              ),
              CarouselSlider(
                items: _obterComentarios(context),
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  pageViewKey: const PageStorageKey<String>('carousel_slider'),
                ),
              ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ));
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  _obterComentarios(BuildContext context) {
    final List<String> comments = [
      "Um filme emocionante que prende sua atenção do início ao fim...",
      "Uma obra-prima cinematográfica que cativa com sua narrativa envolvente...",
      "Um filme repleto de ação que entrega adrenalina do começo ao fim...",
      "Uma comédia hilária que garante gargalhadas do público, com piadas...",
      "Um drama emocionante que explora temas profundos e complexos..."
    ];

    final List<Widget> commentSlider = comments.map((comment) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 42, 42, 42),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Image(
                        image:
                            AssetImage("assets/images/profile_placeholder.png"),
                        height: 45,
                        width: 45,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jane Doe",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "★★★★☆",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Spacer(), // Adiciona um espaçamento flexível
                      Text(
                        "01/04/2024", // Sua data aqui
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    comment,
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          );
        },
      );
    }).toList();

    return commentSlider;
  }
}