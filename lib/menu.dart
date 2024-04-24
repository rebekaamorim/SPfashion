import 'package:flutter/material.dart';

void menu() {
    runApp(Menu());
}

class Menu extends StatelessWidget {
    const Menu({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: const Text(
                        'SPFASHION',
                        style: TextStyle(fontSize: 26),
                    ),
                    centerTitle: true,
                ),
                body: Center(
                    child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                                      child: Text(
                                        '| Bem Vindo',
                                        style: TextStyle(
                                            fontSize: 24,
                                        ),
                                      ),
                                  ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.125),
                                        child: GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                                width: 50,
                                                height: 50,
                                                color: Colors.blue,
                                                child: Image.network(
                                                    'https://via.placeholder.com/150',
                                                    fit: BoxFit.cover,
                                                ),
                                            ),
                                         ),
                                    ),
                                    SizedBox(width: 20),
                                    Expanded(
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Text(
                                                    'Sobre o evento',
                                                    style: TextStyle(fontSize: 22),
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                    'A Fashion Week é um momento emocionante na indústria da moda...',
                                                    style: TextStyle(fontSize: 16),
                                                ),
                                            ],
                                        ),
                                    ),
                                ],
                            ),
                            SizedBox(height: 20),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                    Padding(
                                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                                        child: Text(
                                            'Looks + impactantes',
                                            style: TextStyle(fontSize: 24),
                            ),
                                    ),
                                ]
                            ),
                          
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: MediaQuery.of(context).size.width * 0.10),
                                child: Container(
                                    height: 140,
                                    child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                            ClipRRect(
                                                borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                                                child: SizedBox(
                                                    width: 110,
                                                    child: Image.asset('assets/imagem1.jpg'),
                                                ),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(left: 24.0),
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                                                    child: SizedBox(
                                                        width: 110,
                                                        child: Image.asset('assets/imagem2.jpg'),
                                                    ),
                                                ),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(left: 24.0),
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                                                    child: SizedBox(
                                                        width: 110,
                                                        child: Image.asset('assets/imagem3.jpg'),
                                                    ),
                                                ),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(left: 24.0),
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                                                    child: SizedBox(
                                                        width: 110,
                                                        child: Image.asset('assets/imagem4.jpg'),
                                                    ),
                                                ),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(left: 24.0),
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                                                    child: SizedBox(
                                                        width: 110,
                                                        child: Image.asset('assets/imagem5.jpg'),
                                                    ),
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                            ),
                          MaterialButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                              disabledColor: Colors.grey,
                              color: Colors.deepOrange,
                               child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                 children:[ Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                                      child: const Text(
                                        'Vote agora!',
                                        style: TextStyle(color: Colors.white, fontSize: 20),
                                      ),
                                  )]
                              ),
                              onPressed: () {
                                 Navigator.push(
                                    context,
                                    MaterialPageRoute(builder:
                                    (context) => const Menu()),
                                 );
                                        },
                            ),
                            SizedBox(height: 20),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                    Padding(
                                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                                        child: Text(
                                            'Você é um expert de moda?',
                                            style: TextStyle(fontSize: 24),
                                        ),
                                    ),
                                ]
                            ),
                            SizedBox(height: 5),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                                  child: SizedBox(
                                      width: 500,
                                      height: 100,
                                      child: Image.asset('assets/imagem5.jpg'),
                                  ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}