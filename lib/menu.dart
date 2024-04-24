import 'package:flutter/material.dart';

void menu() {
    runApp(const Menu());
}

class Menu extends StatelessWidget {
    const Menu({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: const Text(
                        'SPFashion',
                        style: TextStyle(fontSize: 26, fontFamily: 'Chloe', color: Colors.pinkAccent),
                    ),
                    centerTitle: true,
                ),
                body: Center(
                    child: Column(
                        children: [
                          const SizedBox(height: 10,),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                                      child:const  Text(
                                        '| Acompanhe os eventos de SP!',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: 'Chloe',
                                        ),
                                      ),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.125, top: 15),
                                        
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
                                    const SizedBox(width: 20),
                                    const Expanded(
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Text(
                                                    'São Paulo Fashion Week',
                                                    style: TextStyle(fontSize: 22, fontFamily: 'Chloe', 
                                                    ),
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                    'A Fashion Week é um momento emocionante na indústria da moda...',
                                                    style: TextStyle(fontSize: 16, fontFamily: 'Glacial'),
                                                ),
                                            ],
                                        ),
                                    ),
                                ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                    Padding(
                                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                                        child: const Text(
                                            'Looks + impactantes',
                                            style: TextStyle(fontSize: 24, fontFamily: 'Chloe', color: Colors.deepOrange),
                            ),
                                    ),
                                ]
                            ),
                            const SizedBox(height: 10,),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: MediaQuery.of(context).size.width * 0.10),
                                child: SizedBox(
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
                                                padding: const EdgeInsets.only(left: 24.0),
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                                                    child: SizedBox(
                                                        width: 110,
                                                        child: Image.asset('assets/imagem2.jpg'),
                                                    ),
                                                ),
                                            ),
                                            Padding(
                                                padding: const EdgeInsets.only(left: 24.0),
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                                                    child: SizedBox(
                                                        width: 110,
                                                        child: Image.asset('assets/imagem3.jpg'),
                                                    ),
                                                ),
                                            ),
                                            Padding(
                                                padding: const EdgeInsets.only(left: 24.0),
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                                                    child: SizedBox(
                                                        width: 110,
                                                        child: Image.asset('assets/imagem4.jpg'),
                                                    ),
                                                ),
                                            ),
                                            Padding(
                                                padding:const EdgeInsets.only(left: 24.0),
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
                            const SizedBox(height: 20,),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 16,),
                              child: Align(
                              alignment: Alignment.centerRight,

                              child:  SizedBox(
                                width: 140,
                                child: MaterialButton(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                disabledColor: Colors.grey,
                                color: Color.fromARGB(255, 225, 160, 255),
                               child: Row(
                              
                                  
                                 children:[ Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      child: const Text(
                                        'Vote agora!',
                                        
                                        style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Glacial'),
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
                            ),
                            ),
                           
                            ),
                            
                          
                            const SizedBox(height: 20),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                    Padding(
                                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                                        child: const Text(
                                            'Você é um expert de moda?',
                                            style: TextStyle(fontSize: 24, fontFamily: 'Chloe', color: Colors.pinkAccent),
                                        ),
                                    ),
                                ]
                            ),
                            const SizedBox(height: 10),
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